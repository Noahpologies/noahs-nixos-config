# KDE stuff, X11, sound, etc. I've also put in some GUI apps that don't fit elsewhere.

{ config, pkgs, ... }:

{

  # Enable X11
  services.xserver.enable = true;

  # Enable the Kool Desktop Environment
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

# make google meet work
xdg.portal = {
  enable = true;
  extraPortals = with pkgs; [
    xdg-desktop-portal-gtk
  ];
};

# GUI and desktop apps

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    #I have no clue where else home manager should go tbh
    home-manager

    krita
    kdePackages.konversation
    kdePackages.kate
    kdePackages.bluedevil
    qbittorrent

    #gnomeExtensions.burn-my-windows
  ];

}
