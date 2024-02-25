let base-config = import ./base.nix;
in {
  plugins.which-key = {
    inherit (base-config.plugins.which-key) enable;

    registrations."<leader>" = {
      c = { e = [ "<cmd>RustLsp expandMacro<cr>" "Expand Macro" ]; };
      E = [ "<cmd>RustLsp explainError<cr>" "Explain Error (Rust)" ];
      r = {
        name = "Run";
        d = [ "<cmd>RustLsp debuggables<cr>" "Debuggables" ];
        r = [ "<cmd>RustLsp runnables<cr>" "Runnables" ];
      };
    };
  };
}
