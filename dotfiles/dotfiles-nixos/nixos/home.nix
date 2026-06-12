{ config, pkgs, ... }:
{
  home.username = "sulw";
  home.homeDirectory = "/home/sulw";
  home.packages = with pkgs; [
    neovim rofi btop waybar unrar dunst slurp git grim unzip
    pavucontrol mpv yazi dysk nerd-fonts.iosevka-term swaybg
    nemo
  ];

home.stateVersion = "26.11";

fonts.fontconfig = {
  enable = true;
};

  gtk.enable = true;

home.pointerCursor = {
  gtk.enable = true;
  x11.enable = true;
  package = pkgs.bibata-cursors; 
  name = "Bibata-Modern-Classic"; 
  size = 16; 
};

programs.bash = {
  enable = true;

  shellAliases = {
    nix-update = "sudo nixos-rebuild switch --flake /etc/nixos";
  };

  initExtra = ''
export PS1="\[\e[38;5;39m\]\u\[\e[38;5;45m\]@\[\e[38;5;51m\]\h \[\e[38;5;195m\]\w \[\033[0m\]$ "
  '';
 };
}
