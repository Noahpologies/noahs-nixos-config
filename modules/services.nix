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

  security.polkit.enable = true;

  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };

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
    polkit_gnome
  ];

}
