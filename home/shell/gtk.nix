{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    phinger-cursors
    nerd-fonts.hack
  ];
  
  # GTK theming
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.phinger-cursors;
    name = "phinger-cursors-light";
    size = 36;
  };

  gtk = {
    enable = true;
    font = {
      name = "nerd-fonts-hack";
      size = 12;
    };
  };
 
  catppuccin = {
    gtk = {
      enable = true;
      flavor = "mocha";
      accent = "lavender";
      icon = {
        enable = true;
        flavor = "mocha";
        accent = "lavender";
      };
    };
  };
}