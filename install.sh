#!/bin/bash

# Installing yay
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Installing other packages
cd ~
yay -S hyprland qt5-wayland qt6-wayland linux-headers alacritty zsh neovim firefox-developer-edition udisks2 unrar unzip ttf-jetbrains-mono-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd sof-firmware wofi wofi-emoji dunst polkit-gnome ranger reflector-simple playerctl pavucontrol pamixer p7zip noto-fonts noto-fonts-cjk ttf-apple-emoji neofetch mpv iw pinta dragon-drop deluge-gtk armcord-bin ccache brillo alsa-firmware alsa-ucm-conf bluez capitaine-cursors zip upower ttf-roboto filezilla xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland papirus-icon-theme swaylock-effects-git wireless_tools wev nwg-look-bin openshot imv grim slurp dosfstools socat bc sysstat btop ueberzugpp swaybg waypaper-git jq eww-wayland pywal

# Installing mantis gtk theme
cd ~
mkdir ~/.local/share/themes
git clone https://github.com/mantissa-/mantis-theme.git
cd mantis-theme
mv Manti* ~/.local/share/themes
cd ~
rm -rf mantis-theme

# Move alacritty config to home dir
cd ~/dotfiles
mv config/wezterm.lua ~/.wezterm.lua

# Install Alacritty themes
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# Setup dotfiles
mkdir ~/.config
cd ~/dotfiles/config
mv * ~/.config/

# Enabling execution permissions
cd ~
chmod +x dotfiles/wine.sh
chmod +x dotfiles/post-install.sh
cd ~/.config
chmod +x hypr/autostart.sh
chmod +x dunst/dunstrc
chmod +x ranger/scope.sh
chmod +x scripts/ffmpeg.sh
chmod +x scripts/brightness.sh
chmod +x scripts/powermenu.sh
chmod +x eww/scripts/activewindowname
chmod +x eww/scripts/bluetooth
chmod +x eww/scripts/battery
chmod +x eww/scripts/brightness
chmod +x eww/scripts/calendar
chmod +x eww/scripts/control-center
chmod +x eww/scripts/cpu
chmod +x eww/scripts/wezterm
chmod +x eww/scripts/memory
chmod +x eww/scripts/vertical-battery
chmod +x eww/scripts/vertical-workspaces
chmod +x eww/scripts/volume
chmod +x eww/scripts/wifi
chmod +x eww/scripts/workspaces
chmod +x eww/scripts/workspaces-kanji
chmod +x eww/scripts/player
chmod +x eww/scripts/powermenu

# Setup ohmyzsh
cd ~
cd ~
echo "Last step is setting up ohmyzsh"
sleep 3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
