# PLEASE STOP CHANGING THE SPEC AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
{
  plugins.which-key = {
    enable = true;
    settings.spec = [
      {
        group = "Terminals";
        __unkeyed_1 = "<leader>T";
        __unkeyed_2 = [
          {
            desc = "Lazygit";
            __unkeyed_1 = "<leader>Tl";
            __unkeyed_2 = "<cmd>lua Lazygit_term()<cr>";
          }
          {
            desc = "Toggle Terminal";
            __unkeyed_1 = "<leader>Tt";
            __unkeyed_2 = "<cmd>ToggleTerm direction=horizontal<cr>";
          }
        ];
      }

      {
        group = "Buffers";
        __unkeyed_1 = "<leader>b";
        __unkeyed_2 = [
          {
            desc = "Close Current";
            __unkeyed_1 = "<leader>bc";
            __unkeyed_2 = "<cmd>BUN<cr>";
          }
          {
            desc = "Close All But Current";
            __unkeyed_1 = "<leader>bC";
            __unkeyed_2 = "<cmd>%BUN|e#<cr>";
          }
          {
            desc = "Delete Current";
            __unkeyed_1 = "<leader>bd";
            __unkeyed_2 = "<cmd>BD<cr>";
          }
          {
            desc = "Delete All But Current";
            __unkeyed_1 = "<leader>bD";
            __unkeyed_2 = "<cmd>%bd|e#|bn|bd<cr>";
          }
          {
            desc = "List All";
            __unkeyed_1 = "<leader>bl";
            __unkeyed_2 = "<cmd>Telescope buffers<cr>";
          }
          {
            desc = "Next";
            __unkeyed_1 = "<leader>bn";
            __unkeyed_2 = "<cmd>bn<cr>";
          }
          {
            desc = "Previous";
            __unkeyed_1 = "<leader>bp";
            __unkeyed_2 = "<cmd>bp<cr>";
          }
        ];
      }

      {
        group = "Code";
        __unkeyed_1 = "<leader>c";
        __unkeyed_2 = [
          {
            desc = "Info";
            __unkeyed_1 = "<leader>cI";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.hover()<cr>";
          }
          {
            desc = "Symbols";
            __unkeyed_1 = "<leader>cS";
            __unkeyed_2 = "<cmd>Telescope lsp_document_symbols<cr>";
          }
          {
            desc = "Actions";
            __unkeyed_1 = "<leader>ca";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.code_action()<cr>";
          }
          {
            desc = "Incoming Calls";
            __unkeyed_1 = "<leader>cc";
            __unkeyed_2 = "<cmd>Telescope lsp_incoming_calls<cr>";
          }
          {
            desc = "Format";
            __unkeyed_1 = "<leader>cf";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.format()<cr>";
          }
          {
            desc = "Toggle Inlay Hints";
            __unkeyed_1 = "<leader>ch";
            __unkeyed_2 =
              "<cmd>lua vim.lsp.inlay_hint.enable(0; not vim.lsp.inlay_hint.is_enabled()) <cr>";
          }
          {
            desc = "Implementation";
            __unkeyed_1 = "<leader>ci";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.implementation()<cr>";
          }
          {
            desc = "Toggle Relative Line Numbers";
            __unkeyed_1 = "<leader>cl";
            __unkeyed_2 = "<cmd>set rnu!<cr>";
          }
          {
            desc = "Outgoing Calls";
            __unkeyed_1 = "<leader>co";
            __unkeyed_2 = "<cmd>Telescope lsp_outgoing_calls<cr>";
          }
          {
            desc = "Rename";
            __unkeyed_1 = "<leader>cr";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.rename()<cr>";
          }
          {
            desc = "Signature";
            __unkeyed_1 = "<leader>cs";
            __unkeyed_2 = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
          }
          {
            group = "Diagnostics";
            __unkeyed_1 = "<leader>cd";
            __unkeyed_2 = [
              {
                desc = "Document";
                __unkeyed_1 = "<leader>cdd";
                __unkeyed_2 =
                  "<cmd>Trouble diagnostics toggle focus=false filter.buf=0<cr>";
              }
              {
                desc = "Workspace";
                __unkeyed_1 = "<leader>cdw";
                __unkeyed_2 = "<cmd>TroubleToggle diagnostic toggle<cr>";
              }
            ];
          }
        ];
      }

      {
        __unkeyed_1 = "<leader>d";
        group = "Debug";
      }
      {
        __unkeyed_1 = "<leader>f";
        group = "Find";
      }
      {
        __unkeyed_1 = "<leader>g";
        group = "Go to";
      }
      {
        __unkeyed_1 = "<leader>t";
        group = "Tabs";
      }
      {
        __unkeyed_1 = "<leader>w";
        proxy = "<c-w>";
        group = "Window/Splits";
      }

      {
        __unkeyed_1 = "<leader>d<CR>";
        __unkeyed_2 = "<Cmd>lua require'dap'.step_into()<CR>";
        desc = "Step Into";
      }
      {
        __unkeyed_1 = "<leader>d<S-CR>";
        __unkeyed_2 = "<Cmd>lua require'dap'.step_out()<CR>";
        desc = "Step Out";
      }
      {
        __unkeyed_1 = "<leader>d<Space>";
        __unkeyed_2 = "<Cmd>lua require'dap'.step_over()<CR>";
        desc = "Step Over";
      }
      {
        __unkeyed_1 = "<leader>dB";
        __unkeyed_2 =
          "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>";
        desc = "Conditional breakpoint";
      }
      {
        __unkeyed_1 = "<leader>dR";
        __unkeyed_2 = "<Cmd>lua require'dap'.run_last()<CR>";
        desc = "Run Last";
      }
      {
        __unkeyed_1 = "<leader>db";
        __unkeyed_2 = "<Cmd>lua require'dap'.toggle_breakpoint()<CR>";
        desc = "Toggle Breakpoint";
      }
      {
        __unkeyed_1 = "<leader>dc";
        __unkeyed_2 = "<Cmd>lua require'dap'.continue()<CR>";
        desc = "Continue";
      }
      {
        __unkeyed_1 = "<leader>dpl";
        __unkeyed_2 = "<Cmd>lua require'dap'.repl.open()<CR>";
        desc = "Open REPL";
      }
      {
        __unkeyed_1 = "<leader>e";
        __unkeyed_2 = "<cmd>NvimTreeToggle<cr>";
        desc = "File Explorer";
      }
      {
        __unkeyed_1 = "<leader>ff";
        __unkeyed_2 = "<cmd>Telescope find_files<cr>";
        desc = "By Filename";
      }
      {
        __unkeyed_1 = "<leader>fg";
        __unkeyed_2 = "<cmd>Telescope live_grep<cr>";
        desc = "By Grep";
      }
      {
        __unkeyed_1 = "<leader>fr";
        __unkeyed_2 = "<cmd>Telescope oldfiles<cr>";
        desc = "Recent";
      }
      {
        __unkeyed_1 = "<leader>gD";
        __unkeyed_2 = "<cmd>lua vim.lsp.buf.declaration()<cr>";
        desc = "Declaration";
      }
      {
        __unkeyed_1 = "<leader>gb";
        __unkeyed_2 = "<cmd>pop<cr>";
        desc = "Previous Symbol";
      }
      {
        __unkeyed_1 = "<leader>gd";
        __unkeyed_2 = "<cmd>Telescope lsp_definitions<cr>";
        desc = "Definition";
      }
      {
        __unkeyed_1 = "<leader>gi";
        __unkeyed_2 = "<cmd>Telescope lsp_implementations<cr>";
        desc = "Implementation";
      }
      {
        __unkeyed_1 = "<leader>gr";
        __unkeyed_2 = "<cmd>Telescope lsp_references<cr>";
        desc = "References";
      }
      {
        __unkeyed_1 = "<leader>gt";
        __unkeyed_2 = "<cmd>Telescope lsp_type_defintions<cr>";
        desc = "Type Definition";
      }
      {
        __unkeyed_1 = "<leader>tN";
        __unkeyed_2 = "<cmd>tabnew<cr>";
        desc = "New Tab";
      }
      {
        __unkeyed_1 = "<leader>tc";
        __unkeyed_2 = "<cmd>tabc<cr>";
        desc = "Close Tab";
      }
      {
        __unkeyed_1 = "<leader>tn";
        __unkeyed_2 = "<cmd>tabn<cr>";
        desc = "Next Tab";
      }
      {
        __unkeyed_1 = "<leader>tp";
        __unkeyed_2 = "<cmd>tabp<cr>";
        desc = "Previous Tab";
      }
    ];
  };
  extraConfigLua = ''
    local Terminal = require('toggleterm.terminal').Terminal

    function Lazygit_term()
      Terminal:new({ cmd = 'lazygit', direction = 'tab' }):toggle();
    end

    vim.g.BufKillCreateMappings = 0
  '';
}
