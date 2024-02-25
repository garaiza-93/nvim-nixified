{ pkgs, ... }:

{
  plugins.lsp.servers.taplo.enable = true;
  plugins.cmp-clippy.enable = true;

  plugins.rustaceanvim.enable = true;

  extraPackages = with pkgs; [ clippy ];
}
