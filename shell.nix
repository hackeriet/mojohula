{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; with perlPackages; [
    perl
    Mojolicious
    MojoSQLite
    MojoPg
    TestPerlCritic
  ];
}

