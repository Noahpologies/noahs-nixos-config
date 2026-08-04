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
      };
    };
    style = ''
      * { font-family: "sans-serif"; font-size: 13px; }
      window#waybar { background: #1e1e2e; color: #cdd6f4; }
    '';
  };
}
