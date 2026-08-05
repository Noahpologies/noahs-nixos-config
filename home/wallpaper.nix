{ pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${./assets/c4-spring-sakura-sky.jpg}" ];
      wallpaper = [ ",${./assets/c4-spring-sakura-sky.jpg}" ];
    };
  };
}
