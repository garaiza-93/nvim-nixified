{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
  plugins.dap = {
    adapters.servers = {
      codelldb = {
        port = "\${port}";
        executable.command =
          "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
        executable.args = [ "--port" "\${port}" ];
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
