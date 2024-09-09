{ pkgs, ... }: {
  programs.fish.enable = true;

  users.users = {
    connor = {
      isNormalUser = true;
      extraGroups = [ "wheel" "input" "networkmanager" ];
      packages = with pkgs; [
        firefox
        tree
        xfce.mousepad
      ];
    };
  };

  users.defaultUserShell = pkgs.fish;
}
