{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
  ];

  programs.alacritty = {
    enable = true;
    theme = "catppuccin_mocha";
  };
}