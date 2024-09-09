{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop Apps
    vesktop
    steam
    heroic
    lutris
    spotify
    kitty
    _1password-gui

    # CLI
    neofetch
    tree
    git
    htop
    ntfs3g
    neovim
    _1password
    starship

    # GNOME extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    gnomeExtensions.arcmenu
    gnomeExtensions.caffeine
    gnome.gnome-tweaks

    # Icons
    numix-icon-theme-circle

    # NixOS Utilities
    home-manager

    # Hyprland Utilities
    mako
    swaybg
    waybar
    wofi
    swww
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
