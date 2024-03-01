{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
  extraPlugins = with pkgs.vimPlugins; [ neotest ];
  extraConfigLua = ''
    require("neotest").setup({
      adapters = {
        require('rustaceanvim.neotest')
      }
    })
  '';
}
