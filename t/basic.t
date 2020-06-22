use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('Hackeriet::Mojohula');
$t->get_ok('/v2/')->status_is(200);

done_testing();
