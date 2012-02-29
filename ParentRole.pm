package ParentRole;

use MooseX::Role::Parameterized;
use Moose::Exporter;

Moose::Exporter->setup_import_methods(
	also => 'MooseX::Role::Parameterized',
);

sub init_meta {
	my $self = shift;
	return MooseX::Role::Parameterized->init_meta(@_);
}

1;
