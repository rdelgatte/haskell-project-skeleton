# Provide Nix / NixOS support by expressing system packages required, rather than manually having to install stuff like Kafka or PostgreSQL
# Inspired by https://docs.haskellstack.org/en/stable/nix_integration/#using-a-custom-shellnix-file
{ ghc, nixpkgs ? import ./default.nix { } }:

with nixpkgs;

haskell.lib.buildStackProject {
  inherit ghc;
  name = "haskell-project-skeleton";
  buildInputs = [ ];
}
