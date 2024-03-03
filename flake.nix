{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";

    rustaceanvim = {
      url = "github:mrcjkb/rustaceanvim";
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

      configurations = [
        {
          package = "rust-config";
          configuration = rust-config;
        }
        {
          package = "nodets-config";
          configuration = nodets-config;
        }
        {
          package = "dotnet-config";
          configuration = dotnet-config;
        }
        {
          package = "python-config";
          configuration = python-config;
        }
      ];

      overlay = final: prev: {
        rustaceanvim =
          prev.rustaceanvim.override { src = inputs.rustaceanvim.url; };
      };

    in inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [ overlay ];
        };

        default = makeNixvim default-config;

        nixvimLib = inputs.nixvim.lib.${system};

        nixvim' = inputs.nixvim.legacyPackages.${system};
        makeNixvim = module:
          nixvim'.makeNixvimWithModule { inherit pkgs module; };

        packages = {
          inherit default;
        } // builtins.listToAttrs (map (config: {
          inherit (config) package configuration;
          name = config.package;
          value = makeNixvim { module = config.configuration; };
        }) configurations);
      in {
        checks.default = nixvimLib.check.mkTestDerivationFromNvim {
          nvim = default;
          name = "A nixvim configuration";
        };

        inherit packages;
      });
}
