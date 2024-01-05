{ pkgs, ... }: {
  extraPlugins = [ pkgs.vimPlugins.nvim-dap ];
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
}
