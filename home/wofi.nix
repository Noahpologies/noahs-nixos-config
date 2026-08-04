{ pkgs, ... }:
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 600;
      height = 350;
      show = "drun";
    };
    style = ''
      window { background-color: #1e1e2e; }
      #input { margin: 5px; }
    '';
  };
}
