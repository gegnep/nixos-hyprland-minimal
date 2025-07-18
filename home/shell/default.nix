{ config, pkgs, ... }:

{
  imports = [
    ./zsh/default.nix
    ./terminals.nix
    ./gtk.nix
  ];
}