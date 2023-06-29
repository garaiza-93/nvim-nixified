{
  description = "A nixvim configuration";

  inputs = {
    nixvim.url = "github:pta2002/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, nixvim, flake-utils, ... }@inputs:
    let
      default-config = import ./configs/default-config.nix;
      rust-config = import ./configs/rust-config.nix;
      nodets-config = import ./configs/nodets-config.nix;
    in inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        nixvimLib = inputs.nixvim.lib.${system};
        pkgs = import inputs.nixpkgs { inherit system; };
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
      in {
        checks.default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };

        packages.default = nvim;
        packages.rust-config = nvimrust;
        packages.nodets-config = nvimnodets;
      });
}
