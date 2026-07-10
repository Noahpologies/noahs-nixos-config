 # Daemon Imports

 { lib, pkgs, ... }:

 {

 xdg.dataFile = {
    "plasma/desktoptheme/daemon" = {
      source = ./dotfiles/daemon/plasma-styles;
      recursive = true;
    };
    "color-schemes" = {
      source = ./dotfiles/daemon/colors;
      recursive = true;
    };
    "aurorae/themes/daemon" = {
      source = ./dotfiles/daemon/window-borders;
      recursive = true;
    };
    "icons/Daemon" = {
      source = ./dotfiles/daemon/icons/Daemon;
      recursive = true;
    };
  };

  xdg.configFile."Kvantum" = {
    source = ./dotfiles/daemon/kvantum-themes;
    recursive = true;
  };

  home.file.".config/BetterDiscord/themes" = {
    source = ./dotfiles/daemon/discord;
    recursive = true;
  };

  programs.plasma.workspace.wallpaper = ./dotfiles/daemon/wallpaper/Editedcyberwall.png;
}
