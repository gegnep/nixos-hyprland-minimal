{ config, pkgs, ... }:

{
  imports = [
    ./hyprland/default.nix
    ./hyprpaper.nix
  ];
}
