{ lib, pkgs, ... }:
{
  imports = [
    ./home/desktopentries.nix
    ./home/hyprland.nix
    ./home/waybar.nix
    ./home/wofi.nix
    ./home/mako.nix
    ./home/kitty.nix
    ./home/cursor.nix
    ./home/wallpaper.nix
    ./home/neovim.nix
  ];

  home = {
    packages = with pkgs; [
      kdePackages.okular
      imv
      mpv

      hello
      hyprlock
      polkit_gnome
      networkmanagerapplet
      blueman
     # starship

      #fonts
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];

    username = "noah";
    homeDirectory = "/home/noah";
    stateVersion = "26.05";
  };

# okular and imv for file opening
    xdg.mimeApps = {
      enable = true;

      defaultApplications = {
        # PDFs
        "application/pdf" = "org.kde.okular.desktop";

        # Images
        "image/png" = "imv.desktop";
        "image/jpeg" = "imv.desktop";
        "image/gif" = "imv.desktop";
        "image/webp" = "imv.desktop";

       # Video
        "video/mp4" = "mpv.desktop";
        "video/webm" = "mpv.desktop";
        "video/x-matroska" = "mpv.desktop";
        "video/quicktime" = "mpv.desktop";

        # Audio
        "audio/mpeg" = "mpv.desktop";
        "audio/ogg" = "mpv.desktop";
        "audio/flac" = "mpv.desktop";
        "audio/wav" = "mpv.desktop";
        "audio/x-wav" = "mpv.desktop";
        "audio/webm" = "mpv.desktop";
	};
    };

  gtk = {
    enable = true;

    theme = {
      name = "Catppuccin-Mocha-Standard-Pink-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
	size = "standard";
	variant = "mocha";
	};
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  qt = {
    enable = true;

    platformTheme.name = "kde";

    style = {
      name = "breeze";
    };
  };

  xdg.configFile."kdeglobals".text = ''
    [General]
    ColorScheme=BreezeDark
  '';

  programs.bash = {
    enable = true;

   # initExtra = ''
    #  unimatrix -ws 100 -c magenta -b && clear
   # '';

    shellAliases = {
      remind = "cat ~/reminder.txt | cowsay";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#delta";
      rebuild-upgrade = "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#delta";
    };
  };
}
