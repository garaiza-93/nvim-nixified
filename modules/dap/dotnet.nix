{ pkgs, ... }: {
  imports = [ ./common.nix ];
  plugins.dap = {
    adapters = {
      executables = {
        coreclr = {
          command = "${pkgs.netcoredbg}/bin/netcoredbg";
          args = [ "--interpreter=vscode" ];
        };
      };
    };
    configurations = {
      cs = [{
        type = "coreclr";
        name = "launch netcoredbg";
        request = "launch";
        program.__raw = ''
          function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end
        '';
      }];
    };
  };
  extraPackages = with pkgs; [ netcoredbg ];
}
