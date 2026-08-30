{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.35";
      font_size = 12;
    };
  };
}
