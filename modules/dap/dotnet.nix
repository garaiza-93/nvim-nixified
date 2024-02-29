{ pkgs, ... }: {
  extraPackages = with pkgs; [ netcoredbg ];
  extraConfigLua = ''
    require('dap.ext.vscode').load_launchjs(nil, { coreclr = {'cs'} })
    require("dap").listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    require("dap").listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    require("dap").listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  '';
  plugins.dap = {
    enable = true;
    extensions.dap-ui.enable = true;
    adapters = {
      executables = {
        coreclr = {
          command = "${pkgs.netcoredbg}/bin/netcoredbg";
          args = [ "--interpreter=vscode" ];
        };
      };
    };
    # configurations = {
    #   cs = [{
    #     type = "coreclr";
    #     name = "launch netcoredbg";
    #     request = "launch";
    #     program.__raw = ''
    #       function()
    #         local dllPath = vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/src/bin/Debug/net', 'file')
    #         
    #         local gitRootCmd = 'git rev-parse --show-toplevel 2>/dev/null'
    #         local gitRoot = vim.fn.system(gitRootCmd):gsub("\n", "")

    #         if gitRoot == "" then
    #             return 'Not inside a Git repository.'
    #         end

    #         local debugFilePath = gitRoot .. '/.debug'
    #         if vim.fn.filereadable(debugFilePath) == 1 then
    #             local debugFileContents = vim.fn.readfile(debugFilePath)
    #             return table.concat(debugFileContents, "\n")
    #         elseif dllPath ~= "" then
    #             return dllPath
    #         else
    #             return 'No DLL path provided.'
    #         end
    #       end
    #     '';
    #   }];
    # };
  };
}
