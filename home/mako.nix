{ pkgs, ... }:
{
  services.mako = {
    enable = true;
    settings = {
      defaultTimeout = 5000;
      backgroundColor = "#1e1e2e";
      borderColor = "#89b4fa";
    };
  };
}
