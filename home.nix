{ lib, pkgs, ... }:
{
  imports = [
    ./home/hyprland.nix
    ./home/waybar.nix
    ./home/wofi.nix
    ./home/mako.nix
    ./home/kitty.nix
    ./home/cursor.nix
    ./home/wallpaper.nix
  ];

  home = {
    packages = with pkgs; [
      hello
      hyprlock
      polkit_gnome
      networkmanagerapplet
      blueman
     # starship

      #fonts
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];

    username = "noah";
    homeDirectory = "/home/noah";
    stateVersion = "26.05";
  };

    xdg.desktopEntries.vstar = {
      name = "VStar";
      comment = "AAVSO VStar";
      exec = "vstar";
      icon = "applications-science";
      terminal = false;
      categories = [ "Science" "Astronomy" ];
    };

  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#erasmus";
      rebuild-upgrade = "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#erasmus";
    };
  };
}
