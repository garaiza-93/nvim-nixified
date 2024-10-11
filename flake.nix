{
  description = "A nixvim configuration";

  inputs = {
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    nixvim.url = "github:nix-community/nixvim";
    rustaceanvim = {
      url = "github:mrcjkb/rustaceanvim";
      flake = false;
    };
  };

  outputs =
    { nixpkgs
    , nixvim
    , flake-utils
    , rustaceanvim
    , neovim-nightly-overlay
    , ...
    }@inputs:
    let
      configList = [
        {
          name = "rust-config";
          extraSpecialArgs = { inherit (inputs) rustaceanvim; };
        }
        {
          name = "nodets-config";
          extraSpecialArgs = { };
        }
        {
          name = "dotnet-config";
          extraSpecialArgs = { };
        }
        {
          name = "python-config";
          extraSpecialArgs = { };
        }
      ];
    in
    inputs.flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import inputs.nixpkgs { inherit system; };

      nixvimLib = inputs.nixvim.lib.${system};

      nixvim' = inputs.nixvim.legacyPackages.${system};
      makeNixvim = module: extraSpecialArgs:
        nixvim'.makeNixvimWithModule {
          inherit pkgs module;
          extraSpecialArgs = pkgs.lib.recursiveUpdate extraSpecialArgs {
            inherit (inputs) neovim-nightly-overlay;
          };
        };

      packages = {
        default = makeNixvim (import ./configs/default-config.nix) { };
      } // builtins.listToAttrs (map
        (config: {
          name = config.name;
          value = makeNixvim (import ./configs/${config.name}.nix)
            config.extraSpecialArgs;
        })
        configList);
    in
    {
      checks.default = nixvimLib.check.mkTestDerivationFromNvim {
        nvim = packages.default;
        name = "A nixvim configuration";
      };

      inherit packages;
    });
}
