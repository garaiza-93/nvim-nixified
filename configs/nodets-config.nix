{ pkgs, ... }: {
  # Import all your configuration modules here
  imports = [
    ../modules/lsp/nodets.nix
    ../modules/which-key/node.nix
    ./default-config.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [ package-info-nvim ];
  extraConfigLuaPre = "require('package-info').setup()";
}
