# X11 fallback, audio, portals, display manager. Hyprland keybinds/animations live in home/hyprland.nix.
{ config, pkgs, ... }:
{
  services.xserver.enable = true;

  # sddm
  services.displayManager.sddm.enable = true;
  services.displayManager.sessionPackages = [ pkgs.hyprland ];
  services.displayManager.sddm.theme = "catppuccin-mocha-mauve";

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
    (catppuccin-sddm.override {
      flavor = "mocha";
      font = "JetBrainsMono Nerd Font";
      fontSize = "9";
      loginBackground = true;
    })
  ];

  programs.bash.shellAliases = {
  # I'm too lazy to fix my blueman applet
  hp = "bluetoothctl power on && bluetoothctl connect 80:A4:B5:DC:1E:EA";
  };
}
