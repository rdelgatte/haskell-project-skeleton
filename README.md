# haskell-project-skeleton

Basic haskell project skeleton which provides: 
- `nix` configuration (loaded with `direnv`)
- `ormolu` as haskell formatter
- `haskell-language-server` as language server protocole (IDE)
- `weeder` to detect dead-code
- `hoogle` haskell package (documentation)
- `hpc` haskell package (code coverage)
- `profiteur` and `profiterole` haskell package (performance analysis)
- `haskell-debug-adapter` haskell package (java-like debugger)

## VSCode configuration

Configure `nix/default.nix` as Nix Env selector.
