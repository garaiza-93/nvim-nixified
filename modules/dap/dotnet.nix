{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ netcoredbg ];
  plugins.dap = {
    adapters.executables = {
      coreclr = {
        command = "${pkgs.netcoredbg}/bin/netcoredbg";
        args = [ "--interpreter=vscode" ];
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [ neotest neotest-dotnet ];
  extraConfigLua = ''
    require("neotest").setup({
      adapters = {
        require("neotest-dotnet")({
          dap = {
            adapter_name = "coreclr"
          }
        })
      }
    })
  '';
}
