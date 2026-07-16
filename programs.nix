# programs.nix (apps and such)

{ config, pkgs, ... }:

{

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

  # KDE apps
  krita
  kdePackages.kate
  kdePackages.konversation
  kdePackages.bluedevil
  
  qbittorrent

  ];

}
