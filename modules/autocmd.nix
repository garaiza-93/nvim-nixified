{
  autoCmd = [
    {
      desc = "Format file on write with LSP";
      event = "BufWritePre";
      callback = {
        __raw = ''
          function()
            vim.lsp.buf.format()
          end'';
      };
    }
    {
      desc = "Hide status/tab/cmd in alpha";
      event = "User";
      pattern = "AlphaReady";
      callback = {
        __raw = ''
          function()
            vim.opt.showtabline = 0
            require('lualine').hide()
            vim.opt.laststatus = 0
            vim.opt.cmdheight = 0
          end'';
      };
    }
    {
      desc = "Reenable status/tab/cmd after alpha";
      event = "User";
      pattern = "AlphaClosed";
      callback = {
        __raw = ''
          function()
            vim.opt.showtabline = 2
            vim.opt.laststatus = 2
            require('lualine').hide({ unhide = true })
            vim.opt.cmdheight = 1
          end'';
      };
    }
  ];
}
