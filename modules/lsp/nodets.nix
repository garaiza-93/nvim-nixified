{
  plugins.lsp.servers.tsserver.enable = true;

  plugins.none-ls = {
    enable = true;
    sources = {
      formatting.eslint.enable = true;
      code_actions.eslint.enable = true;
      formatting.prettier.enable = true;
      formatting.prettier.disableTsServerFormatter = false;
    };
  };

  plugins.lsp-format.setup.typescript.exclude = [ "tsserver" ];
  plugins.lsp-format.setup.typescriptreact.exclude = [ "tsserver" ];
}
