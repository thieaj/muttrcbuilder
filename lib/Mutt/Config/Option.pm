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
	return Mutt::Config::OptionTypes->possible_values($self->type,
		$self->name);
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
