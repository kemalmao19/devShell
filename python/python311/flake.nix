{
  description = "This is my python dev: Data Science Libraries Edition";

  # Flake inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs"; # also valid: "nixpkgs"
  };

  # Flake outputs
  outputs = { self, nixpkgs, }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];

      # Helper to provide system-specific attributes
      forAllSystems = f:
        nixpkgs.lib.genAttrs allSystems
        (system: f { pkgs = import nixpkgs { inherit system; }; });
    in {
      # Development environment output
      devShells = forAllSystems ({ pkgs }: {
        default = let
          # Use Python 3.11
          python = pkgs.python311;

        in pkgs.mkShell {
          # The Nix packages provided in the environment
          packages = [
            # Python plus helper tools
            (python.withPackages (ps:
              with ps; [
              
                # notebook
                jupyter
                jupyterlab
                ipykernel
                ipython

                # scientific computing
                pandas # Data structures & tools
                numpy # Array & matrices
                scipy # Integral, solving differential, equations, optimizations)

                # Visualization
                matplotlib # plot & graphs
                seaborn # heat maps, time series, violin plot

                # Algorithmic Libraries
                scikit-learn-extra # Machine learning: regression, classificatons,..
                statsmodels # Ecplore data, estimate statistical models, & perform statistical test.

                # Formatting
                black

                # Probabilistic
                # pymc #support < 311

              ]))
          ];
        };
      });
    };
}
