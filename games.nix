{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    steam
    prismlauncher
    # probably more things eventually
  ];

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true;
  dedicatedServer.openFirewall = true;

};

}
