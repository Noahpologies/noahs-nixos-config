# stuff that doesn't go anywhere else. plus fun things like cowsay.
{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    neovim
    fastfetch

    # random fun stuff
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
    
    # breaks randomly when it runs, probably just too cpu intensive for my little machine.
    #hollywood

  ];

}
