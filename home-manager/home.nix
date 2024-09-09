{ config, pkgs, ... }:

{

  imports = [
    ./modules/bundle.nix
  ];

  home = {
    username = "connor";
    homeDirectory = "/home/connor";
    stateVersion = "23.11";
  };

}
