{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:garaiza-93/nixvim/add-bandit";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    nvim-lspconfig = {
      url = "github:neovim/nvim-lspconfig";
      flake = false;
    };
  };

  outputs = { nixpkgs, nixvim, flake-utils, ... }@inputs:
    let
      default-config = import ./configs/default-config.nix;
      rust-config = import ./configs/rust-config.nix;
      nodets-config = import ./configs/nodets-config.nix;
      dotnet-config = import ./configs/dotnet-config.nix;
      python-config = import ./configs/python-config.nix;

      overlay = final: prev: {
        nvim-lspconfig =
          prev.nvim-lspconfig.override { src = inputs.nvim-lspconfig.url; };
      };

    in inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        nixvimLib = inputs.nixvim.lib.${system};
        pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [ overlay ];
        };
        nixvim' = inputs.nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = default-config;
        };
        nvimrust = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = rust-config;
        };
        nvimnodets = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = nodets-config;
        };
        nvimdotnet = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = dotnet-config;
        };
        nvimpython = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = python-config;
        };

      in {
        checks.default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };

        packages = {
          rust-config = nvimrust;
          nodets-config = nvimnodets;
          dotnet-config = nvimdotnet;
          python-config = nvimpython;
          default = nvim;
        };
      });
}
