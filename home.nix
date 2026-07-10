# home.nix
{ lib, pkgs, ... }:
{
  imports = [ ./dotfiles/selector.nix ];

  home = {
    packages = with pkgs; [
      hello
    ];

    username = "noah";
    homeDirectory = "/home/noah";

    stateVersion = "26.05";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#erasmus";
      rebuild-upgrade = "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#eramsus";
      switcheroo = "cd /etc/nixos && sudo nvim /etc/nixos/dotfiles/selector.nix";
    };
  };

 }
