package Mutt::Config::Option;

use strict;
use warnings;

use Mutt::Config::OptionTypes;

sub new {
	my ($class, $name, $category, $spec) = @_;

	my $self = { %$spec,
		name     => $name,
		category => $category
	};

	# Set initial value
	$self->{value} = $self->{default};

	return bless $self => $class;
}

sub name {
	my $self = shift;
	return $self->{name};
}

sub type {
	my $self = shift;
	return $self->{type};
}

sub default {
	my $self = shift;
	return $self->{default};
}

sub category {
	my $self = shift;
	return $self->{category};
}

sub possible_values {
	my $self = shift;
	return Mutt::Config::OptionTypes->possible_values(
		$self->type(),
		$self->name()
	);
}

sub html_description {
	my $self = shift;
	return $self->{text};
}

sub value {
	my $self = shift;
	my $new_value = shift;

	$self->{value} = $new_value if defined($new_value);
	return $self->{value};
}

1;
__END__

=head1 NAME

Mutt::Config::Option - Class that models an option in a mutt config.

=head1 SYNOPSIS

  my $option = Mutt::Config::Option("print", "quadoption");
  print $option->html_description();
  print $option->default();
  $option->value("ask-yes");
  print $option->value();

=head1 DESCRIPTION

=head2 new()

Create a new option object. Takes the name of the option, the category
that the option belongs to and optionally a hash-reference of attributes
as parameters, and returns the newly constructed object.

=head2 name()

Returns the name of the option as a string.

=head2 type()

Returns the type of the option if set at creation-time.

=head2 default()

Returns the default value of the option if set at creation-time.

=head2 category()

Returns the category of the option as a string.

=head2 possible_values()

Returns a list of possible values that this option can take, assuming
that the type of the option was set at creation-time.

=head2 html_description()

Returns the HTML description of the option as extracted from the mutt
manual, if set at creation-time.

=head2 value()

Getter/setter for the current value of the option. If passed in
as a parameter the value of the object is updated and the new
value returned. Otherwise the existing value of the object is
returned.

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
