{ pkgs, neovim-nightly-overlay, ... }: {
  config.package = neovim-nightly-overlay.packages.${pkgs.system}.default;
  config = {
    clipboard.providers.xclip.enable = true;
    clipboard.register = "unnamedplus";
  };
  config.opts = {
    expandtab = true;
    foldcolumn = "1";
    foldenable = true;
    foldlevel = 99;
    foldlevelstart = 99;
    ignorecase = true;
    incsearch = true;
    mouse = "a";
    mousemoveevent = true;
    number = true;
    relativenumber = true;
    scrolloff = 4;
    shiftwidth = 2;
    signcolumn = "yes";
    smartcase = true;
    splitbelow = true;
    splitright = true;
    syntax = "ON";
    tabstop = 2;
    termguicolors = true;
    timeoutlen = 300;
    updatetime = 50;
  };

  config.globals = {
    mapleader = " ";
    localleader = "\\";
    t_co = 256;
  };

}
