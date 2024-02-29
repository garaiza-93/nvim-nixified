{ pkgs, ... }: {
  imports = [ ./common.nix ];
  plugins.dap = {
    adapters = {
      executables = {
        coreclr = {
          command = "${pkgs.netcoredbg}/netcoredbg";
          args = [ "--interpreter=vscode" ];
        };
      };

      configurations = {
        cs = [{
          type = "coreclr";
          name = "launch  netcoredbg";
          request = "launch";
        }];
      };
    };
  };
  extraPackages = with pkgs; [ netcoredbg ];
}