#!/bin/bash

# List of packages
packages=(
  hyprland-git
  ly    # login manager
  kitty # shell
  # swaync # notification daemon
  #  hyprpaper-git  # wallpapers
  udiskie
  wlogout
  python-pywal16
  #  nwg-look # gtk-settings editor
  rofi
  #   rofi-calc # does this work?
  #  zoom
  #  pipes.sh
  nautilus       # document view
  pipewire       # audio
  pipewire-alsa  # audio
  pipewire-pulse # audio
  wireplumber    # audio
  eog            # image viewer
  evince         # document viewer: pdf, postscript
  decibels       # audio file player (nicer than ffmpeg)
  # blueberry # bluetooth audio
  pavucontrol # mixer for pulseaudio
  network-manager-applet
  neofetch # fetch
  #  cava # audio bar visualizer
  # bibata-cursor-theme
  # adw-gtk-theme
  firefox # browser

)

## cli utilities
packages_cli=(
  nvim
  ripgrep
  fd
  lazygit
  fzf
)

packages_extras=(
  slurp          # select screen
  grim           # screenshots
  wl-clipboard   # clipboard
  wayle-bin      # top bar
  awww           # wallpaper engine
  waypaper-git   # wallpaper gui
  hyprsunset-git # blue light filter
  hyprlock-git   # lockscreen
  obsidian       # notes
  tailscale      # lan / vpn
)

packages_games=(
  discord # internet chat app
  steam   # games
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
