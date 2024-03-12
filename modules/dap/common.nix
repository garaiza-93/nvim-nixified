{
  plugins.dap.enable = true;
  plugins.dap.extensions.dap-ui.enable = true;
  extraConfigLua = ''
    local dap, dapui = require("dap"), require("dapui")
    require('dap.ext.vscode').load_launchjs(nil, { coreclr = {'cs'}, codelldb = {'rust'} })
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  '';
}
