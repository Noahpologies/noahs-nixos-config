# home/neovim.nix
{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ catppuccin-nvim ];
    initLua = ''
      vim.o.termguicolors = true

      require("catppuccin").setup({
        flavour = "mocha",
	transparent_background = true,
      })
      vim.cmd.colorscheme "catppuccin"
    '';
  };
}
