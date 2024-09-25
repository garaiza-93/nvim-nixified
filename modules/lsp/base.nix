{
  plugins.lsp.enable = true;
  plugins.lsp.servers = {
    nil-ls.enable = true;
    jsonls.enable = true;
    marksman.enable = true;
  };

  plugins.lsp-format.enable = true;
  plugins.lsp-format.lspServersToEnable = [ "all" ];

  plugins.none-ls.enable = true;
  plugins.none-ls.enableLspFormat = true;
  plugins.none-ls.sources.formatting.nixfmt.enable = true;
}
