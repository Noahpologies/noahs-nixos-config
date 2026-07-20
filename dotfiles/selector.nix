# Selector: uncomment the desired config. Only have the one right now but the point is INFRASTRUCTURE!

{ lib, pkgs, ... }:
{
  imports = [
  ./daemon/daemon-imports.nix
  # ./vanilla/vanilla-imports.nix
  # ./another-config-imports.nix
  ];
}
