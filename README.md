# Nixvim!!!
I made this so that I can use my configuration as a package using Nix magicks.
I plan to add this to my dev shells so that I can have what I need, only where I need it, instead of lumping everything together.

## Configurations
- Default: My configuration, with `nil_ls` and `nixfmt` for Nix stuff. This is what I use everywhere.
- Rust: Default + Rust goodies
- Node: Defaeult + Node + Typescript goodies
- Dotnet: Default + Dotnet.
Each configuration differs in what language servers are available along with relevant stuff (plugins, formatters, etc).

## Demo

To try any of these configurations on any machine with Nix:
```nix
nix run github:garaiza-93/nvim-nixified#default
```

