{
  plugins.lsp.servers.pylsp.enable = true;

  plugins.none-ls = {
    enable = true;
    sources.diagnostics = {
      bandit.enable = true;
      flake8.enable = true;
    };
  };
}
