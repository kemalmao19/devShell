{
  description = "Melange starter";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs";

    # Depend on the Melange flake, which provides the overlay
    melange.url = "github:melange-re/melange";
  };

  outputs = { self, nixpkgs, flake-utils, melange }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system}.appendOverlays [
          # Set the OCaml set of packages to the 5.1 release line
          (self: super: { ocamlPackages = super.ocaml-ng.ocamlPackages_5_1; })
          # Apply the Melange overlay
          melange.overlays.default
        ];
        inherit (pkgs) ocamlPackages;
      in

      {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with ocamlPackages; [
            ocaml
            dune_3
            findlib
            ocaml-lsp
            ocamlPackages.melange
          ];
          buildInputs = [ ocamlPackages.melange ];
        };
      });
}
