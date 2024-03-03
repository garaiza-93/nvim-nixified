{ pkgs, rustaceanvim, ... }: {
  plugins.lsp.servers.taplo.enable = true;
  plugins.cmp-clippy.enable = true;

  plugins.rustaceanvim = {
    enable = true;
    package =
      pkgs.vimPlugins.rustaceanvim.overrideAttrs { src = rustaceanvim; };
  };

  extraPackages = with pkgs; [ clippy ];
}
