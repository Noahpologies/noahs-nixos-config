{ lib, pkgs, ... }:
{
  imports = [
    ./home/hyprland.nix
    ./home/waybar.nix
    ./home/wofi.nix
    ./home/mako.nix
    ./home/kitty.nix
    ./home/cursor.nix
    ./home/wallpaper.nix
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

    xdg.desktopEntries.vstar = {
      name = "VStar";
      comment = "AAVSO VStar";
      exec = "vstar";
      icon = "applications-science";
      terminal = false;
      categories = [ "Science" "Astronomy" ];
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
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#erasmus";
      rebuild-upgrade = "nix flake update --flake /etc/nixos && sudo nixos-rebuild switch --flake /etc/nixos#erasmus";
    };
  };
}
