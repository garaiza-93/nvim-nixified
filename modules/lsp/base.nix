{
  plugins.lsp.enable = true;

  plugins.lsp-format.enable = true;
  plugins.lsp-format.lspServersToEnable = [ "nil_ls" ];

  plugins.none-ls.enable = true;
  plugins.none-ls.enableLspFormat = true;
  plugins.none-ls.sources.formatting.nixfmt.enable = true;
}
