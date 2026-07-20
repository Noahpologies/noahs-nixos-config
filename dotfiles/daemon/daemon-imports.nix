# Daemon imports

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

    # Splash screen
    "plasma/look-and-feel/Daemon" = {
      source = ./splash-screen/Daemon;
      recursive = true;
    };

    # Konsole color scheme
    "konsole" = {
      source = ./konsole-colors;
      recursive = true;
    };

    "org.kde.syntax-highlighting/theme" = {
      source = ./kate-colors;
      recursive = true;
    };
  };

  xdg.configFile."Kvantum" = {
    source = ./kvantum-themes;
    recursive = true;
  };

#  home.file.".config/BetterDiscord/themes" = {
#    source = ./discord;
#    recursive = true;
#  };

  # Font
  home.file.".local/share/fonts/Prototype.ttf".source = ./fonts/Prototype.ttf;
  fonts.fontconfig.enable = true;

  # Cursor theme
  home.packages = with pkgs; [
    bibata-cursors
  ];

  programs.plasma = {
    enable = true;

    workspace = {
      wallpaper = ./wallpapers/Editedcyberwall.png;
      lookAndFeel = "org.kde.plasma.daemon";
      splashScreen = { theme = "Daemon"; };
      cursor.theme = "Bibata-Original-Classic";
    };
  };
}
