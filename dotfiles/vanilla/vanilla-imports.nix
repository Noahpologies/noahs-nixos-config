# future-config-imports.nix
{ pkgs, ... }:
{
  programs.plasma.workspace = {
    theme = "breeze-dark";
    colorScheme = "BreezeDark";
    iconTheme = "breeze-dark";
    cursor.theme = "breeze_cursors";
  };
}
