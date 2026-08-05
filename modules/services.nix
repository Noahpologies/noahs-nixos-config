# packages for tools or support, yknow services. Realistically I don't need half of these anymore but whatever
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    unzip
    jdk17
    pciutils # lspci
    usbutils # lsusb
    alsa-utils # aplay, alsamixer
    pulseaudio # pactl
    alsa-ucm-conf
    iw
    tree-sitter
    gcc
    gnumake
    git
    wget
  ];

}
