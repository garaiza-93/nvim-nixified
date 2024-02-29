{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ coreclr ];
  extraConfigLua = ''
    require('dap.ext.vscode').load_launchjs(nil, { coreclr = {'cs'} })
  '';
  #  plugins.dap = {
  #    adapters = {
  #      executables = {
  #        coreclr = {
  #          command = "${pkgs.netcoredbg}/bin/netcoredbg";
  #          args = [ "--interpreter=vscode" ];
  #        };
  #      };
  #    };
  #    configurations = {
  #      cs = [{
  #        type = "coreclr";
  #        name = "launch netcoredbg";
  #        request = "launch";
  #        program.__raw = ''
  #          function()
  #            local dllPath = vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/src/bin/Debug/net', 'file')
  #            
  #            local gitRootCmd = 'git rev-parse --show-toplevel 2>/dev/null'
  #            local gitRoot = vim.fn.system(gitRootCmd):gsub("\n", "")
  #
  #            if gitRoot == "" then
  #                return 'Not inside a Git repository.'
  #            end
  #
  #            local debugFilePath = gitRoot .. '/.debug'
  #            if vim.fn.filereadable(debugFilePath) == 1 then
  #                local debugFileContents = vim.fn.readfile(debugFilePath)
  #                return table.concat(debugFileContents, "\n")
  #            elseif dllPath ~= "" then
  #                return dllPath
  #            else
  #                return 'No DLL path provided.'
  #            end
  #          end
  #        '';
  #      }];
  #    };
  #  };
}
