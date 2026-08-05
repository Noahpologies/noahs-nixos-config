{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
  ];

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 46;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        network = {
          format-wifi = "  {essid} ({signalStrength}%)";
          format-ethernet = " f0e4 Wired";
          format-disconnected = "  Disconnected";
          tooltip-format = "{ifname} via {gwaddr}";
        };

        battery = {
          format = "{icon} {capacity}%";
          format-icons = [ " " " " " " " " " " ];
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-icons = { default = [ " " " " " " ]; };
          format-muted = "x Muted";
        };

        clock = {
          format = "{:%H:%M   %a %d %b}";
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", "Symbols Nerd Font Mono";
        font-size: 13px;
      }

      window#waybar {
        background: transparent;
      }

      #waybar > box > box {
        background-color: #1e1e2e;
        border: 2px solid #89b4fa;
        border-radius: 12px;
        padding: 0 10px;
        margin: 4px 6px;
      }

      #workspaces, #clock, #pulseaudio, #network, #battery, #tray {
        padding: 0 6px;
        color: #cdd6f4;
      }
    '';
  };
}
