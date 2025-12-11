#!/bin/bash

# List of packages
packages=(
  hyprland-git
  ly             # login manager
  kitty          # shell
  waypaper       # wallpapers
  swaync         # notification daemon
  hyprpaper-git  # wallpapers
  hyprsunset-git # blue light filter
  hyprlock-git   # lockscreen
  udiskie
  wlogout
  python-pywal16
  #  nwg-look # gtk-settings editor
  rofi
  #   rofi-calc # does this work?
  #  zoom
  #  pipes.sh
  #  firefox
  nvim
  #  discord
  #  obsidian
  #  steam
  nautilus       # document view
  pipewire       # audio
  pipewire-alsa  # audio
  pipewire-pulse # audio
  wireplumber    # audio
  eog            # image viewer
  evince         # document viewer: pdf, postscript
  decibels       # audio file player (nicer than ffmpeg)
  # blueberry # bluetooth audio
  pavucontrol
  network-manager-applet
  neofetch
  cava # audio bar visualizer
  # bibata-cursor-theme
  # adw-gtk-theme
)

sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
