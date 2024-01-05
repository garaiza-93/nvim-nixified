{ pkgs, ... }:

{
  plugins.cmp-clippy.enable = true;
  extraPackages = with pkgs; [ clippy rust-analyzer ];
}
