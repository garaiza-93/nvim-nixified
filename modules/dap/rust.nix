{
  plugins.dap = {
    enable = true;
    adapters.executables = {
      gdb = {
        type = "executable";
        command = "gdb";
        args = ''{ "-i", "dap" }'';
      };
    };
    configurations.rust = {
      name = "Launch";
      type = "gdb";
      request = "launch";
      program.__raw = ''
        function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end
      '';
      cwd = "\${workspaceFolder}";
    };
  };
}
