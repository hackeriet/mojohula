# This file configures a development runtime environment using the NixOS
# packaging system. To set up Nix on your computer, check out the instructions
# at https://nixos.org/download.html

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; with perlPackages; [
    perl
    Mojolicious
    MojoSQLite
    MojoPg
    TestPerlCritic
    MojoliciousPluginOpenAPI
  ];
  shellHook = ''
    export LANGUAGE=C LANG=C LC_ALL=C
    echo "# perl ./script/hackeriet_mojohula daemon"
  '';
}

# vim: et ts=2
