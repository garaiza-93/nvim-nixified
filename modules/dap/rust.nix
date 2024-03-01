{ pkgs, ... }: {
  imports = [ ./common.nix ];
  extraPackages = with pkgs; [ vscode-extensions.vadimcn.vscode-lldb ];
}
