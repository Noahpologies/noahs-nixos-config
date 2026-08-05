{ config, pkgs, ... }:

{

  users.users."noah" = {
    isNormalUser = true;
    description = "Noah Saunders";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };


}
