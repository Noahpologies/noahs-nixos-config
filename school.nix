# stuff useful for either school or science. Anything productivity related.

{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    texlive.combined.scheme-medium
    texstudio
    libreoffice

    # VStar
    (writeShellScriptBin "vstar" ''
    exec "$HOME/software/vstar/VStar.sh" "$@"
   '')

  ];

}
