{
  plugins.toggleterm.enable = true;
  plugins.toggleterm.settings = {
    direction = "float";
    float_opts.border = "curved";
  };

  plugins.bufferline = {
    enable = true;
    mode = "tabs";
    alwaysShowBufferline = false;
    separatorStyle = "thin";
  };

  plugins.lualine = {
    enable = true;
    globalstatus = true;
    componentSeparators.left = "";
    componentSeparators.right = "";
    sectionSeparators.left = "";
    sectionSeparators.right = "";
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" "diff" ];
      lualine_c = [ "buffers" ];
      lualine_x = [ "filetype" ];
      lualine_y = [ "diagnostics" ];
      lualine_z = [ "location" ];
    };
  };

  plugins.trouble.enable = true;
  plugins.trouble.settings.icons = true;
}
