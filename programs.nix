# programs.nix (apps and such)

{ config, pkgs, ... }:

{

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

  krita
  qbittorrent
  dolphin

  ];

}
