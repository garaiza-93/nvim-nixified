{
  plugins.lsp.servers = {
    pylsp.enable = true;
    ruff.enable = true;
  };

  plugins.none-ls = {
    enable = true;
    sources.diagnostics = { flake8.enable = true; };
  };
}
