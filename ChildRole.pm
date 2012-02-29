package ChildRole;

use ParentRole;

parameter param => ( isa => 'Str' );

role {
	my $p = shift;

	my $param = $p->param();

	# The sub BUILD guarantees that a BUILD() method will have been
	# defined, either by the role or a class consuming it, before
	# after() augments it.
	sub BUILD { warn __PACKAGE__ . " sub BUILD" }

	after BUILD => sub {
		my ($self, $args) = @_;
		warn __PACKAGE__ . " after BUILD (param = $param)";
	};
};

1;
