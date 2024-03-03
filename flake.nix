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

  outputs = { nixpkgs, nixvim, flake-utils, rustaceanvim, ... }@inputs:
    let
      configList = [
        {
          name = "rust-config";
          extraSpecialArgs = { inherit (inputs) rustaceanvim; };
        }
        { name = "nodets-config"; }
        { name = "dotnet-config"; }
        { name = "python-config"; }
      ];
    in inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import inputs.nixpkgs { inherit system; };

        nixvimLib = inputs.nixvim.lib.${system};

        nixvim' = inputs.nixvim.legacyPackages.${system};
        makeNixvim = module: extraSpecialArgs:
          nixvim'.makeNixvimWithModule {
            inherit pkgs module;
            extraSpecialArgs = extraSpecialArgs // { };
          };

        packages = {
          default = makeNixvim (import ./configs/default-config.nix) { };
        } // builtins.listToAttrs (map (config: {
          name = config.name;
          value = makeNixvim (import ./configs/${config.name}.nix)
            config.extraSpecialArgs;
        }) configList);
      in {
        checks.default = nixvimLib.check.mkTestDerivationFromNvim {
          nvim = packages.default;
          name = "A nixvim configuration";
        };

        inherit packages;
      });
}
