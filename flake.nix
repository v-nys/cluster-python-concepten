{
  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          # setting env variable "schema"
          # means both pre-contents.lc.yaml and contents.lc.yaml can use same line to inform LSP
          shellHook =
            ''
              export schema="\$schema";
              if [ -z ''${LBLP_SOURCE_DIR} ]; then
                echo "The environment variable LBLP_SOURCE_DIR must be defined. Set it to the directory containing the LBLP source code."
                exit 1
              fi
            '';
        };
      });
}
