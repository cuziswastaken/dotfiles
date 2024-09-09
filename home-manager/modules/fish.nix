{ pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellInit = ''

    starship init fish | source
      set -U fish_greeting ""

      if status is-interactive
        neofetch
      end
    '';
  };
}
