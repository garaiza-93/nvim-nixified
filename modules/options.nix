{
  config = {
    clipboard.providers.xclip.enable = true;
    clipboard.register = "unnamedplus";
  };
  config.options = {
    mousemoveevent = true;
    updatetime = 50;
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    number = true;
    relativenumber = true;
    scrolloff = 4;
    signcolumn = "yes";
    syntax = "ON";
    termguicolors = true;
    ignorecase = true;
    smartcase = true;
    incsearch = true;
    expandtab = true;
    tabstop = 2;
    shiftwidth = 2;
    splitright = true;
    splitbelow = true;
    mouse = "a";
    timeoutlen = 300;
  };

  config.globals = {
    mapleader = " ";
    localleader = "\\";
    t_co = 256;
  };

}
