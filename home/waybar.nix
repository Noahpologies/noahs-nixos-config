{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        network = {
          format-wifi = "  {essid} ({signalStrength}%)";
          format-disconnected = "󰤮 Disconnected";
          tooltip-format = "{ifname} via {gwaddr}";
        };

        battery = {
          format = "{icon} {capacity}%";
          format-icons = [ "" "" "" "" "" ];
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-icons = { default = [ "" "" "" ]; };
          format-muted = "󰝟 Muted";
         };

        clock = {
          format = "{:%H:%M   %a %d %b}";
        };
      };
    };
    style = ''
      * { font-family: "sans-serif"; font-size: 13px; }
      window#waybar { background: #1e1e2e; color: #cdd6f4; }
    '';
  };
}
