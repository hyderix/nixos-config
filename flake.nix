{
  inputs = {    
    # Stable nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";  
    # Unstable nixpkgs for use in overlays
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... } @ inputs: {
    nixosConfigurations = {
      errebox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos/errebox/configuration.nix
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
