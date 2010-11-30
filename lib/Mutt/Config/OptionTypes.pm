package Mutt::Config::OptionTypes;

use strict;
use warnings;

sub possible_values {
	my ($class, $type, $cmd) = @_;

	if ($type eq "boolean") {
		return qw(yes no);
	}

	if ($type eq "quadoption") {
		return qw(yes ask-yes ask-no no);
	}

	if ($type eq "folder magic") {
		return qw(mbox MMDF MH Maildir);
	}

	if ($type eq "sort order") {
		if ($cmd eq "sort_alias") {
			return qw(address alias unsorted);
		}

		if ($_ eq "sort_browser") {
			return _reverse(qw(alpha date size unsorted));
		}

		# else
		return _reverse(qw(date date-received from mailbox-order score size spam subject threads to));
	}

	# Unknown
	return;
}

# For when an option supports both forward and reverse sorting for
# each possible sort type
sub _reverse {
	return map { ("$_", "reverse-$_") } @_;
}

1;
__END__

=head1 NAME

Mutt::Config::OptionTypes - Utility functions related to the various
possible option types that mutt offers.

=head1 SYNOPSIS

  @possibles = Mutt::Config::OptionTypes->possible_values(
    "quadoption", # Type of option
    "askcc"       # Name of option
  );

=head1 DESCRIPTION

Functions in this module should be called as class methods.

=head2 possible_values()

Returns the possible values that a given option can take in the config.
Takes the type of the option (such as "quadoption") as the first parameter
and the name of the option (such as "askcc") as the second.

Returns a list of possible values (as strings), or an empty list if unknown.

=head1 SEE ALSO

=over

=item *

L<Mutt::Config>

=item *

L<http://www.muttrcbuilder.org/>

=back

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
