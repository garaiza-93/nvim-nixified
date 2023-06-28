{ pkgs, ... }:

{
  plugins = {
    nvim-autopairs.enable = true;
    telescope.enable = true;
    ts-autotag.enable = true;
    treesitter-rainbow.enable = true;
    treesitter.enable = true;

    nvim-tree = {
      enable = true;
      updateFocusedFile.enable = true;
      updateFocusedFile.updateRoot = true;
      preferStartupRoot = true;
    };

    indent-blankline = {
      enable = true;
      char = "▏";
      showCurrentContext = true;
      showCurrentContextStart = true;
      buftypeExclude = [ "terminal" ];
      filetypeExclude = [ "help" "git" "markdown" "snippets" "text" "alpha" ];
    };
  };
  extraPlugins = [ pkgs.vimPlugins.nvim-surround ];
  extraConfigLua = ''require("nvim-surround").setup()'';
}
