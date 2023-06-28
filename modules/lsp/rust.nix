{ pkgs, ... }:

{
  plugins.lsp.servers.rust-analyzer.enable = true;
  plugins.lsp.servers.rust-analyzer.settings.checkOnSave = true;
  plugins.lsp.servers.rust-analyzer.settings.check.command = "clippy";
  plugins.lsp.servers.rust-analyzer.settings.check.features = "all";
  plugins.cmp-clippy.enable = true;
  extraPackages = with pkgs; [ clippy ];
}
