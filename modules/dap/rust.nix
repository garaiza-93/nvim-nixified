{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
  plugins.dap = {
    adapters.executables = {
      codelldb = {
        command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/bin/codelldb";
        args = [ "--interpreter=vscode" ];
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [ neotest ];
  extraConfigLua = ''
    require("neotest").setup({
      adapters = {
        require('rustaceanvim.neotest')
      }
    })
  '';
}
