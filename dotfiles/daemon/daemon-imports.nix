# Daemon imports
{ lib, pkgs, ... }:

{
  xdg.dataFile = {
    "plasma/desktoptheme" = {
      source = ./plasma-styles;
      recursive = true;
    };
    "color-schemes" = {
      source = ./colors;
      recursive = true;
    };
    "aurorae/themes" = {
      source = ./window-borders;
      recursive = true;
    };
    "icons/Daemon" = {
      source = ./icons/Daemon;
      recursive = true;
    };
    "plasma/look-and-feel/Daemon" = {
      source = ./splash-screen/Daemon;
      recursive = true;
    };
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

  home.file.".local/share/fonts/Prototype.ttf".source = ./fonts/Prototype.ttf;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    bibata-cursors
  ];

#  qt = {
#    enable = true;
#    platformTheme.name = "kde";
#    style.name = "kvantum";
#  };

  programs.plasma = {
    enable = true;

    workspace = {
      wallpaper = ./wallpapers/Editedcyberwall.png;
      splashScreen = { theme = "Daemon"; };
      cursor.theme = "Bibata-Original-Classic";
      theme = "Daemon";
      colorScheme = "Daemon";
      iconTheme = "Daemon";
    };

    fonts = {
      general = { family = "Prototype"; pointSize = 10; };
      menu = { family = "Prototype"; pointSize = 10; };
      toolbar = { family = "Prototype"; pointSize = 10; };
    };

    configFile."kwinrc"."org.kde.kdecoration2" = {
      theme = "__aurorae__svg__Daemon";
      BorderSize = "VeryLarge";
      BorderSizeAuto = false;
    };

    configFile."kwinrc"."Plugins" = {
      kwin6_effect_hexagonEnabled = true;
      cubeEnabled = true;
      eyeonscreenEnabled = true;
      mousemarkEnabled = true;
      translucencyEnabled = true;
    };
  };
}
