{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprpaper
  ];

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      preload = [ "./wallpaper.png" ];
      wallpaper = [
        "eDP-1, ./wallpaper.png"
      ];
    };
  };
}
