package Mutt::Config::Builder;

use strict;
use utf8;
use warnings;

use Catalyst::Runtime 5.70;

# Set flags and add plugins for the application

use parent qw/Catalyst/;
use Catalyst qw/-Debug
                ConfigLoader
                Session
                Session::State::Cookie
                Session::Store::FastMmap
                Static::Simple
                Unicode::Encoding/; # You can use "Unicode" here if
                                    # you don't have Unicode::Encoding
our $VERSION = '0.3';

# Configure the application.
#
# Note that settings in mutt_config_builder.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
	name     => 'Mutt::Config::Builder',
	encoding => 'UTF-8',
	# Disable deprecated behavior needed by old applications
	disable_component_resolution_regex_fallback => 1,
);

# Start the application
__PACKAGE__->setup();

=head1 NAME

Mutt::Config::Builder - Catalyst based application

=head1 SYNOPSIS

    script/mutt_config_builder_server.pl

=head1 DESCRIPTION

The heart of the Muttrc Builder, that allows you to build
configurations files for the L<mutt> email client in an
easier way.

=head1 SEE ALSO

L<Mutt::Config::Builder::Controller::Root>, L<Catalyst>

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005-2010 by Luke Ross

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
