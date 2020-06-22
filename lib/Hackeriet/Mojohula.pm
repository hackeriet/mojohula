package Hackeriet::Mojohula;
use 5.030000;
use Mojo::Base 'Mojolicious', -signatures;

our $VERSION = v0.0.1;

# This method will run once at server start
sub startup ($c) {

  # Load configuration from hash returned by config file
  my $config = $c->plugin('Config');

  # Application configuration
  $c->secrets($config->{secrets});

  # Vue.js main route
  my $r = $c->routes;
  $r->get('/')->to('static#index');

  # OpenAPI routes
  $c->plugin('OpenAPI' => {url => $c->home->rel_file("mojohula.json")});

}

1;
