# programs.nix (apps and such)

{ config, pkgs, ... }:

{

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

  blender
  discord
  localsend
  krita
  qbittorrent
  obsidian
  yazi
  obs-studio

  ];

}
