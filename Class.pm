package Class;

use Moose;

with ChildRole => { param => "specified in " . __PACKAGE__ };

1;
