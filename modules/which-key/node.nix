let base-config = import ./base.nix;
in {
  plugins.which-key = {
    inherit (base-config.plugins.which-key) enable;

    registrations."<leader>" = {
      n = {
        name = "NPM Packages";
        "s" = [
          "<cmd>lua require('package-info').show()<cr>"
          "Show dependency versions"
        ];
        "c" = [
          "<cmd>lua require('package-info').hide()<cr>"
          "Hide dependency versions"
        ];
        "t" = [
          "<cmd>lua require('package-info').toggle()<cr>"
          "Toggle dependency versions"
        ];
        "u" = [
          "<cmd>lua require('package-info').update()<cr>"
          "Update dependency on the line"
        ];
        "d" = [
          "<cmd>lua require('package-info').delete()<cr>"
          "Delete dependency on the line"
        ];
        "i" = [
          "<cmd>lua require('package-info').install()<cr>"
          "Install a new dependency"
        ];
        "p" = [
          "<cmd>lua require('package-info').change_version()<cr>"
          "Install a different dependency version"
        ];
      };
    };
  };
}
