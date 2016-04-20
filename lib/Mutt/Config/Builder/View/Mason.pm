package Mutt::Config::Builder::View::Mason;

use strict;
use warnings;

use parent 'Catalyst::View::Mason';

__PACKAGE__->config(use_match => 0);

=head1 NAME

Mutt::Config::Builder::View::Mason - Mason View Component for Mutt::Config::Builder

=head1 DESCRIPTION

Mason View Component for Mutt::Config::Builder. This is used to render
the templates that display the site.

=head1 SEE ALSO

L<Mutt::Config::Builder>, L<HTML::Mason>

=head1 AUTHOR

Luke Ross, E<lt>lr@lukeross.nameE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005-2016 by Luke Ross

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
