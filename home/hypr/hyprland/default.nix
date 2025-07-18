{ config, pkgs, ... }:

{
  imports = [
    ./hyprlandconf.nix
  ];

  home.packages = with pkgs; [
    hyprland
    alacritty
    pamixer
    playerctl
    brightnessctl
    fuzzel
    cliphist
    wl-clipboard
    wlr-randr
    fuzzel
    kdePackages.xwaylandvideobridge
    udiskie
    pcmanfm
  ];

  services.cliphist.enable = true;
  services.udiskie.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";
  wayland.windowManager.hyprland.systemd.variables = [ "--all" ];

  programs.hyprpanel.enable = true;

}