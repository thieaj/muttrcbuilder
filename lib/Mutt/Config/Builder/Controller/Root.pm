package Mutt::Config::Builder::Controller::Root;

use strict;
use utf8;
use warnings;

use parent 'Catalyst::Controller';

use Mutt::Config;

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in Builder.pm
#
__PACKAGE__->config(namespace => '');

=head1 NAME

Mutt::Config::Builder::Controller::Root - Root Controller for Mutt::Config::Builder

=head1 DESCRIPTION

The main controller for the Builder, that processes the requests and
dispatches to the appropriate template.

=head1 METHODS

=head2 index

Display the welcome page and let the user choode a Mutt::Config
version.

=cut

sub index :Path :Args(0) {
	my ($self, $c) = @_;

	$c->stash(
		template => "src/index.html",
		versions => [ Mutt::Config->versions() ]
	);
}

=head2 default

Standard 404 error page.

=cut

sub default :Path {
	my ($self, $c) = @_;

	$c->stash->{template} = "src/404.html",
}

=head2 error

Private action used if the Builder encounters an error.

=cut

sub error :Private {
	my ($self, $c, $message) = @_;

	$c->stash(
		template => "src/error.html",
		message  => $message
	);
}

=head2 setup_mutt

Private action used to ensure that we know what Mutt::Config version
we're using, before instantiating the object and sticking it in the
stash. We check C<< $c->req >> and the session to see what versions
may have been selected.

=cut

sub setup_mutt :Private {
	my ($self, $c) = @_;

	my $version;
	# Has the previous form passed it in?
	if ($version = $c->req->param("version")) {
		$c->session->{version} = $version;
	}
	else {
		# Is it in the session
		$version = $c->session->{version};
	}
    
	# Stop if no valid version
	$c->detach("error", ["Invalid version"]) if ($version =~ m/[^0-9A-Za-z_.-]/);
	$c->stash->{mutt} = Mutt::Config->new($version);
}

=head2 setup_mutt

Used to render a final .muttrc file. The previous form allowed the user
to choose the final format, so check C<< $c->req >> to find out what
format was requested.

=cut

sub build :Local {
	my ($self, $c) = @_;

	# We need the Mutt::Config object
	$c->forward("setup_mutt");

	# .muttrcs are plain text
	$c->response->header("Content-Type" => "text/plain");

	# Switch based on chosen format
	my $format = $c->req->param("format");
	if ($format eq "full") {
		$c->stash->{template} = "src/muttrc_manual.html";
	}
	elsif ($format eq "categories") {
		$c->stash->{template} = "src/muttrc_categories.html";
	}
	else {
		$c->stash->{all} = ($format eq "all");
		$c->stash->{template} = "src/muttrc_plain.html";
	}
}

=head2 page

The heart of the builder, in which a page of options is displayed to
the user, and any options selected on the previous page are saved into
the session.

=cut

sub page :Local {
	my ($self, $c) = @_;

	# We need the Mutt::Config object
	$c->forward("setup_mutt");

	# Save newly-set parameters
	while(my($k, $v) = each %{ $c->req->params() }) {
		if ($k =~ m/^(opt|col)_([a-z0-9_]{1,50})$/) {
			$c->session->{$k} = $v;
		}
	}

	# Which page to display?
	my $page = $c->req->param("page") || "essential";

	# Use correct template according to page selected in drop-down.
	if ($page eq "_color")  {
		$c->stash->{template} = "src/color.html";
	}
	elsif ($page eq "_finish") {
		$c->stash->{template} = "src/choose_format.html";
	}
	else {
		$c->stash->{template} = "src/page.html";
		$c->stash->{page}     = $page
	}
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 LICENSE

Copyright (C) 2005-2014 by Luke Ross

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.

=cut

1;
