{ pkgs, ... }:

{
  plugins = {
    better-escape.enable = true;
    better-escape.timeout = 100;
    nvim-autopairs.enable = true;
    telescope.enable = true;
    ts-autotag.enable = true;
    rainbow-delimiters.enable = true;
    treesitter.enable = true;

    nvim-tree = {
      enable = true;
      updateFocusedFile.enable = true;
      updateFocusedFile.updateRoot = true;
      preferStartupRoot = true;
    };

    indent-blankline = {
      enable = true;
      indent.char = "▏";
      scope.enabled = true;
      scope.showStart = true;
      exclude.buftypes = [ "terminal" ];
      exclude.filetypes = [ "help" "git" "markdown" "snippets" "text" "alpha" ];
    };
  };
  extraPlugins = [ pkgs.vimPlugins.nvim-surround ];
  extraConfigLua = ''require("nvim-surround").setup()'';
}
