 # File: My/DB.pm
package My::DB;

use Rose::DB;
our @ISA = qw(Rose::DB);

         # Use a private registry for this class
__PACKAGE__->use_private_registry;
