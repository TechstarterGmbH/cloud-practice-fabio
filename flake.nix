{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.05";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in 
      {

        # nix develop .#hello or nix shell .#hello
        devShells.nixos = pkgs.mkShell {
          packages = [ pkgs.htmldoc ];
        };
        
        # nix develop or nix shell
        devShell = self.devShells.${system}.nixos;
  });
}
