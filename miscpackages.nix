# stuff that doesn't go anywhere else. plus fun things like cowsay.
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    neovim
    fastfetch
    cowsay
    fortune
  ];

}
