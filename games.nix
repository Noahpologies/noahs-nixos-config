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

programs.bash.shellAliases = {

  # not sure where to put this but here's a list of the games in bsdgames

  bsdgames = "echo 'bsdgames came with all of these: Adventure, arithmetic, atc, backgammon, banner-bsd, battlestar, bcd, boggle, caesar, canfield, cfscores, countmail, cribbage, factor-bsd, fish, fortune, gomoku, hangman, hunt, huntd, mille, monop, morse, number, pig, pom, ppt, primes, quiz, rain, random, robots, rot13, snake, snscore, strfile, teachgammon, tetris-bsd, trek, wargames, worm-bsd, worms, wtf, wump' | lolcat | cowsay";

};

}
