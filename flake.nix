{
  description = "pengeg's flake.nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { 
    self, 
    nixpkgs, 
    catppuccin, 
    home-manager,
    ...
  }: {
    nixosConfigurations = {
      blackbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./nixos/default.nix

          catppuccin.nixosModules.catppuccin

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.pengeg = {
              imports = [
                ./home/default.nix
                catppuccin.homeModules.catppuccin
              ];
            };
          }
        ];
      };
    };
  };
}
