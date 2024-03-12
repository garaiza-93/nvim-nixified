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
    trouble.enable = true;
    nvim-ufo.enable = true;

    nvim-tree = {
      enable = true;
      updateFocusedFile.enable = true;
      updateFocusedFile.updateRoot = true;
      preferStartupRoot = true;
      view.width = {
        min = 30;
        max = 50;
      };
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

  extraPlugins = with pkgs.vimPlugins; [ nvim-surround ];
  extraConfigLua = ''
    vim.diagnostic.config({virtual_text=false})
    require("nvim-surround").setup()'';
}
