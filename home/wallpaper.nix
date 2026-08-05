{ pkgs, ... }:
{
  home.packages = with pkgs; [ 
    awww
    waypaper
  ];

  xdg.configFile."waypaper/config.ini".text = ''
    [Settings]
    folder = /etc/nixos/home/assets
    backend = awww
    '';
}
