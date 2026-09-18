# stuff that doesn't go anywhere else. plus fun things like cowsay.
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    fastfetch
    hyfetch
    gvfs

    # random fun stuff
    chameleos
    tree
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
