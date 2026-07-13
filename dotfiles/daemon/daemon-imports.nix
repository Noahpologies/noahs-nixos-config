 # Daemon Imports

 { lib, pkgs, ... }:

 {

 xdg.dataFile = {
    "plasma/desktoptheme/daemon" = {
      source = ./plasma-styles;
      recursive = true;
    };
    "color-schemes" = {
      source = ./colors;
      recursive = true;
    };
    "aurorae/themes/daemon" = {
      source = ./window-borders;
      recursive = true;
    };
    "icons/Daemon" = {
      source = ./icons/Daemon;
      recursive = true;
    };
  };

  xdg.configFile."Kvantum" = {
    source = ./kvantum-themes;
    recursive = true;
  };

  home.file.".config/BetterDiscord/themes" = {
    source = ./discord;
    recursive = true;
  };

  programs.plasma.enable = true;
  programs.plasma.workspace.wallpaper = ./wallpapers/Editedcyberwall.png;
}
