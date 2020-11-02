{ sources ? import ./sources.nix }:

import sources.nixpkgs {
  # Following lines are mandatory as the haskell-debug-adapter is broken. See below: 
  # nix-repl> haskell.packages.ghc884.haskell-debug-adapter
  # Package ‘haskell-debug-adapter-0.0.33.0’ in /nix/store/x0q87hvyab6431g84iswgr92qz5wngaw-nixpkgs-20.09pre240426.f9567594d5a/nixpkgs/pkgs/development/haskell-modules/hackage-packages.nix:115608 is marked as broken, refusing to evaluate.
  # a) For `nixos-rebuild` you can set
  #   { nixpkgs.config.allowBroken = true; }
  # in configuration.nix to override this.
  # 
  # b) For `nix-env`, `nix-build`, `nix-shell` or any other Nix command you can add
  #   { allowBroken = true; }
  # to ~/.config/nixpkgs/config.nix.
  config.allowBroken = true;
  config.packageOverrides = pkgs: {
    haskell = pkgs.haskell // {
      packages = pkgs.haskell.packages // {
        ghc884 = pkgs.haskell.packages.ghc884.override {
          overrides = self: super: {
            haskell-debug-adapter =
              pkgs.haskell.lib.dontCheck super.haskell-debug-adapter;
          };
        };
      };
    };
  };
}
