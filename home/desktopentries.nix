{ config, lib, pkgs, ... }:
{

    xdg.desktopEntries.vstar = {
      name = "VStar";
      comment = "AAVSO VStar";
      exec = "vstar";
      icon = "applications-science";
      terminal = false;
      categories = [ "Science" "Astronomy" ];
    };

    xdg.desktopEntries.HOMESTUCK = {
      name = "Homestuck";
      comment = "Offline copy";
      exec = "appimage-run /home/noah/software/HOMESTUCK/Homestuck.AppImage --no-sandbox";
      terminal = false;
      type = "Application";
      categories = [ "Game" ];
    };
}
