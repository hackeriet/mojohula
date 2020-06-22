package Hackeriet::Mojohula::Auth;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub login {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

1;
