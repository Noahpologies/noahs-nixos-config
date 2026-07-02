# stuff that doesn't go anywhere else. plus fun things like cowsay.
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    neovim
    fastfetch

    # random fun stuff
    cowsay
    ponysay
    fortune
    lolcat
    figlet
    sl
    unimatrix
    asciiquarium
    bsdgames
    hollywood

  ];

}
