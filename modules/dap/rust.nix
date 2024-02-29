{ pkgs, ... }: {
  plugins.dap.enable = true;
  plugins.dap.extensions.dap-ui.enable = true;
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
}
