{ pkgs, helpers, ... }:
let
  onAttach = ''
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_augroup("LspFormatting", {})
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              return client.name == "null-ls"
            end,
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
  plugins.null-ls = {
    enable = true;
    extraOptions = {
      sources = helpers.mkRaw ''
        { require("null-ls").builtins.formatting.eslint_d,
          require("null-ls").builtins.formatting.prettier_d_slim,
          require("null-ls").builtins.code_actions.eslint_d,
          require("null-ls").builtins.diagnostics.eslint_d
        }
      '';
    };
  };
  extraPackages = with pkgs.nodePackages; [
    prettier
    prettier_d_slim
    eslint
    eslint_d
  ];
}
