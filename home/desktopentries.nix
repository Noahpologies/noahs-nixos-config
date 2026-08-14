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
}
