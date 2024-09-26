{ pkgs, ... }: {
  # Import all your configuration modules here
  imports = [
    ../modules/autocmd.nix
    ../modules/cmp.nix
    ../modules/editor.nix
    ../modules/keybinds.nix
    ../modules/options.nix
    ../modules/style.nix
    ../modules/ui.nix
    ../modules/which-key/base.nix
    ../modules/lsp/base.nix
    ../modules/dap/common.nix
  ];

  plugins.web-devicons.enable = true;
  extraPackages = with pkgs; [ lazygit nixfmt-classic ripgrep fd ];
}
