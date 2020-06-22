use Test::More;
use Mojo::SQLite;
use Data::Dumper;

my $db_file = "t/var/test.db";
my @db_schema = qw(t/var/schema.sql t/var/testdata.sql);
for (@db_schema) {
	die "missing $_" unless -f $_;
}
unlink $db_file if -f $db_file;
system("cat ".join(" ", @db_schema)." | sqlite3 $db_file");

my $db = Mojo::SQLite->new("sqlite:$db_file")->db;

my $testuser = $db->select("member_member",
						   [qw(id cellphone hausmania_deposit)],
						   { handle => 't3stus3r'})->hash;

is($testuser->{cellphone},"+4701234567", "t3stus3r has cellphone");
is($testuser->{id}, 1, "t3stus3r has id 1");
is($testuser->{hausmania_deposit},1, "t3stus3r has paid hausmania deposit");


done_testing();
