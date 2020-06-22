use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  VERSION   => '0.01',
  PREREQ_PM => {'Mojolicious' => '8.52', 'Mojo::SQLite' => '0', 'Mojolicious::Plugin::OpenAPI' => '3'},
  test      => {TESTS => 't/*.t'}
);
