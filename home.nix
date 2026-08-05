{ lib, pkgs, ... }:
{
  imports = [
    ./home/hyprland.nix
    ./home/waybar.nix
    ./home/wofi.nix
    ./home/mako.nix
    ./home/kitty.nix
    ./home/cursor.nix
  ];

  home = {
    packages = with pkgs; [
      hello
      hyprpaper
      hyprlock
      polkit_gnome
      networkmanagerapplet
      blueman

      #fonts
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];

    username = "noah";
    homeDirectory = "/home/noah";
    stateVersion = "26.05";
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
