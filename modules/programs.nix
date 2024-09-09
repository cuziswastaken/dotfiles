{ config, pkgs, ... }:

{
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    videoDrivers = [ "nvidia" ];
  };

  hardware.nvidia.modesetting.enable = true;

  services.printing.enable = true;
  hardware.bluetooth.enable = true;
  hardware.pulseaudio.enable = true;

  programs.hyprland.enable = true;
}
