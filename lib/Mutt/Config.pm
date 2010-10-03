package Mutt::Config;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.02';
our $PREFIX;

BEGIN {
	# Where do our version information modules live?
	$PREFIX  = __PACKAGE__ . "::Version";
}

# Load the mutt version information
use Module::Pluggable search_path => [ $PREFIX ], require => 1;

use Mutt::Config::Categories;
use Mutt::Config::Option;

sub versions {
	my $self = shift;

	# Strip off the prefix and convert underscores to dots
	# "Mutt::Config::Version::v1_2_5" becomes "v1.2.5"
	return map {
		s/^${PREFIX}::v//;
		s/_/./g;
		$_;
	} __PACKAGE__->plugins;
}

sub new {
	my ($class, $version) = @_;

	# Check we loaded that version
	if (not grep { $_ eq $version } __PACKAGE__->versions()) {
		die("Bad version: $version");
	}

	# Turn the version into a package name
	$version =~ s/\./_/g;
	my $version_pkg = "${PREFIX}::v$version";

	my $self = {
		version        => $version,
	};

	# If this is the first time this version is used, we need to
	# read in the manual from the <DATA> handle of the package.
	my $variables_info;
	{
		no strict "refs";
		$variables_info = ${ "${version_pkg}::VARIABLES" };

		${ "${version_pkg}::MANUAL" } ||= join("", readline(
			*{ "${version_pkg}::DATA" }
		));

		# And copy the manual to ourself
		$self->{manual} = \${ "${version_pkg}::MANUAL" };
	}

	# Create Mutt::Config::Option objects from the version info
	my $variables;
	while(my($var, $info) = each %$variables_info) {
		$variables->{$var} = new Mutt::Config::Option(
			$var,
			$Mutt::Config::Categories::CATEGORIES{$var}
				|| "default", # default category
			$info
		);
	}
	$self->{variables} = $variables;

	return bless $self => $class;
}

sub categories {
	my ($self) = @_;
	my %seen;
	return grep { not $seen{$_}++ } values
		%Mutt::Config::Categories::CATEGORIES;
}

sub manual {
	my ($self) = @_;
	return ${ $self->{manual} };
}

sub variable {
	my ($self, $variable) = @_;
	return $self->{variables}->{$variable};
}

sub variables {
	my ($self, $page) = @_;

	return $self->{variables} unless $page;

	my %toreturn;
	while(my($name,$obj) = each(%{ $self->{variables} })) {
		$toreturn{$name} = $obj if ($obj->category eq $page);
	}
	return \%toreturn;
}

1;
__END__

=head1 NAME

Mutt::Config - List the configuration variables offered by the mutt email
program.

=head1 SYNOPSIS

  my $obj = Mutt::Config->new("v1.2.5");
  while(my($k, $v) = each %{ $obj->variables() }) {
    print "option $k has default " . $v->default() . "\n";
  }

=head1 DESCRIPTION

=head2 versions()

Returns a list of mutt versions supported by this Mutt::Config. Each
version is a string, such as "v1.2.5".

=head2 new()

Constructs a new Mutt::Config object. Takes one parameter - the version
of mutt to model, as returned by versions()

=head2 variables()

Returns a hash of configuration variables supported by this mutt. The
hash keys are the names of the options, and each value is a
corresponding L<Mutt::Config::Option> instance for the variable.

Optionally takes a string parameter, in which case only options for
the category name supplied are returned.

=head2 variable()

Takes a string parameter as a name of an option and returns a
corresponding L<Mutt::Config::Option> instance, or undef if the option
is not supported by this mutt version.

=head2 categories()

Returns a list of available categories of options (strings).

=head2 manual()

Returns the text-formatted mutt configuration options reference manual
for this version of mutt.

=head1 SEE ALSO

=over

=item *

L<http://www.mutt.org/>

=item *

L<http://www.muttrcbuilder.org/>

=back

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005-2009 by Luke Ross

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
