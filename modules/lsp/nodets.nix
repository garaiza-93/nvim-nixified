{ pkgs, ... }:
let
  onAttach = ''
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_augroup("LspFormatting", {})
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function(bufnr)
          vim.lsp.buf.format({
            filter = function(client)
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  '';
in {
  plugins.lsp.servers.tsserver = {
    enable = true;
    onAttach.function = onAttach;
  };
  extraConfigLua = ''
    local null_ls = require("null-ls")
    local sources = {
      null_ls.builtins.formatting.prettier_d,
      null_ls.builtins.formatting.eslint_d,
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.code_actions.eslint_d
    };
    null_ls.setup({sources = sources})
  '';
  extraPackages = with pkgs.nodePackages; [
    prettier
    eslint
    prettier_d_slim
    eslint_d
  ];
}
