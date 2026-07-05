# home.nix
{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    username = "noah";
    homeDirectory = "/home/noah";

    stateVersion = "26.05";
  };
}
