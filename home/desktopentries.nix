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

    xdg.desktopEntries.jugglinglab = {
      name = "Juggling Lab";
      comment = "Who up jugglin they lab";
      exec = "${config.home.homeDirectory}/software/jugglinglab/run.sh";
      icon = "applications-games";
      terminal = false;
      categories = [ "Science" "Simulation" ];
    };

}
