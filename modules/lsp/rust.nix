{ pkgs, ... }:

{
  plugins.lsp.servers.rust-analyzer.enable = true;
  plugins.lsp.servers.rust-analyzer.settings.checkOnSave = true;
  plugins.lsp.servers.rust-analyzer.settings.check.command = "clippy";
  plugins.lsp.servers.rust-analyzer.settings.check.features = "all";
  plugins.lsp.servers.rust-analyzer.installRustc = false;
  plugins.lsp.servers.rust-analyzer.installCargo = false;
  plugins.cmp-clippy.enable = true;
  extraPackages = with pkgs; [ clippy ];
}
