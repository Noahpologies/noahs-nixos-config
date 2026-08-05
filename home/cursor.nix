{ pkgs, ... }:
{
  home.pointerCursor = {
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 40;
    gtk.enable = true;
    x11.enable = true;
  };
}
