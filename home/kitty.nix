{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.2";
      font_size = 12;
    };
  };
}
