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

      # lspsaga = {
      # enable = true;
      #  lightbulb.virtualText = false;
      #  callhierarchy.keys = {
      #    close = "c";
      #    edit = "<CR>";
      #    quit = "q";
      #    shuttle = "[";
      #    split = "ss";
      #    vsplit = "sv";
      #    tabe = "T";
      #    toggleOrReq = "t";
      #  };
      #  definition.keys = {
      #    close = "c";
      #    edit = "<CR>";
      #    quit = "q";
      #    split = "ss";
      #    vsplit = "sv";
      #    tabe = "T";
      #  };
      #  diagnostic.keys = {
      #    execAction = "e";
      #    quit = "q";
      #    quitInShow = "q<ESC>";
      #    toggleOrJump = "<CR>";
      #  };
      #  finder.keys = {
      #    close = "c";
      #    quit = "q";
      #    shuttle = "[";
      #    split = "ss";
      #    tabnew = "T";
      #    toggleOrOpen = "<CR>";
      #    vsplit = "sv";
      #  };
      #  outline.keys = {
      #    jump = "<CR>";
      #    quit = "q";
      #    toggleOrJump = "o";
      #  };
      #  rename.keys = {
      #    exec = "<CR>";
      #    quit = "q";
      #    select = "s";
      #  };
      # };

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

  extraPlugins = with pkgs.vimPlugins; [ nvim-surround rustaceanvim ];
  extraConfigLua = ''require("nvim-surround").setup()'';
}
