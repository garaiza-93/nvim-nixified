{pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ ./default-config.nix ../modules/lsp/python.nix ];
  extraPackages = with pkgs; [ python311Packages.pynvim ];
}
