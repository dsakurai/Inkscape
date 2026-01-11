{
  description = "A simple flake to test Nix installation";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/25.11";

  outputs = { self, nixpkgs }: {
    packages = {
      x86_64-linux = let
        pkgs = import nixpkgs {
          system = "x86_64-linux";
        };
      in {
        # Add Wayland utilities
        Inkscape = pkgs.inkscape;
      };
    };
  };
}