# packages for tools or support, yknow services. Realistically I don't need half of these anymore but whatever
{ config, pkgs, ... }:

{

  services.udisks2.enable = true;
  services.gvfs.enable = true;

  #fingerprint
  services.fprintd.enable = true;
  security.pam.services.login.fprintAuth = true;
  security.pam.services.sudo.fprintAuth = true;
  security.pam.services.sddm.fprintAuth = true;
  security.pam.services.swaylock.fprintAuth = true;

  environment.systemPackages = with pkgs; [
    ffmpeg
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
    brightnessctl
  ];

}
