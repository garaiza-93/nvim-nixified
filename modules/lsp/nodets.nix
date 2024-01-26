{
  plugins.typescript-tools = {
    enable = true;
    settings.separateDiagnosticServer = false;
  };

  plugins.none-ls = {
    enable = true;
    sources = {
      formatting.eslint.enable = true;
      code_actions.eslint.enable = true;
      formatting.prettier.enable = true;
      formatting.prettier.disableTsServerFormatter = true;
    };
  };
}
