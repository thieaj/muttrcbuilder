package Mutt::Config::OptionTypes;

use strict;
use warnings;

sub possible_values {
	my ($class, $type, $cmd) = @_;

	if ($type eq "boolean")    { return qw(yes no); }
	if ($type eq "quadoption") { return qw(yes ask-yes ask-no no); }
	if ($type eq "folder magic") { return qw(mbox MMDF MH Maildir); }
	if ($type eq "sort order") {
		if ($cmd eq "sort_alias") { return qw(address alias unsorted); }
		if ($_ eq "sort_browser") { return _reverse qw(alpha date size unsorted); }
		return _reverse qw(date date-received from mailbox-order score size spam subject threads to);
	}
	return;
}

sub _reverse {
	return map { ("$_", "reverse-$_") } @_;
}

1;
