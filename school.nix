# stuff useful for either school or science. Anything productivity related.

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    #LaTeX
    texlive.combined.scheme-medium
    texlivePackages.aastex # AAVSO LaTeX packages
    texstudio

    

    libreoffice

    # VStar
    (writeShellScriptBin "vstar" ''
    exec "$HOME/software/vstar/VStar.sh" "$@"
   '')

  ];

}
