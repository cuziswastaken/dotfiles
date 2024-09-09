{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/bootloader.nix
      ./modules/packages.nix
      ./modules/users.nix
      ./modules/programs.nix
    ];
  
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Australia/Melbourne";

  system.stateVersion = "24.05";

}

