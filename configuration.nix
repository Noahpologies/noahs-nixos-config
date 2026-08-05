{ config, pkgs, ... }:

{
  imports =
  
  [
      ./hardware-configuration.nix
      ./modules/fixes.nix
      ./modules/hardware.nix
      ./modules/desktop.nix
      ./modules/users.nix
      ./modules/services.nix
      ./modules/miscpackages.nix
      ./modules/games.nix
      ./modules/school.nix
      ./modules/programs.nix

    ];
  
  networking.hostName = "erasmus"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05"; # Channel version

}
