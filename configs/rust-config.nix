{
  # Import all your configuration modules here
  imports = [
    ../modules/autocmd.nix
    ../modules/cmp.nix
    ../modules/dap/rust.nix
    ../modules/editor.nix
    ../modules/keybinds.nix
    ../modules/lsp/rust.nix
    ../modules/options.nix
    ../modules/style.nix
    ../modules/ui.nix
    ../modules/which-key/rust.nix
    ./default-config.nix
  ];
}
