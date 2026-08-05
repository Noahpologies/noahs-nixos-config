# X11 fallback, audio, portals, display manager. Hyprland keybinds/animations live in home/hyprland.nix.

{ config, pkgs, ... }:

{

  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;

# ENABLE HYPRLAND!
  programs.hyprland = {
    enable = true;
    withUWSM = false;
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  security.polkit.enable = true;

  # make google meet / screen share work under Hyprland
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    home-manager
  ];

}
