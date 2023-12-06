{
  plugins.lsp.enable = true;
  plugins.lsp.servers.nil_ls.enable = true;

  plugins.lsp-format.enable = true;
  plugins.lsp-format.lspServersToEnable = "all";

  plugins.none-ls.enable = true;
  plugins.none-ls.enableLspFormat = true;
  plugins.none-ls.sources.formatting.nixfmt.enable = true;
}
