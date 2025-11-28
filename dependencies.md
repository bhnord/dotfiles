# Dependencies

## Pacman Dependencies

//note: add sound setup dependencies

### Pretty Much Needed

- sudo
- dhcpcd
  - needed for wifi

### Usually Wanted for Desktop Environment

- yay (aur package manager)
- zsh (make default with chsh -s /bin/zsh)
- xdg-desktop-portal-hyprland (screen share)
- brightnessctl
- zsh, oh-my-zsh
- pipewire (and all the needed packages -> [pipewire wiki](https://wiki.archlinux.org/title/PipeWire))
  - note: requires a restart
- networkmanager

### Nice to Have

- steam [steam archwiki](https://wiki.archlinux.org/title/Steam)
  - make sure you install the correct graphics version for your gpu [wiki](https://wiki.archlinux.org/title/Vulkan#Installation)
  - vulkan-tools to check to make sure it's working
  - once downloaded:
    - Steam -> Compatibility -> steam play for all other titles -> Proton (Hotfix)
- discord:
  - .config/discord/settings.json -> add `"SKIP_HOST_UPDATE": true`
- slurp (select portion of screen)
- grim (screenshots)
- wl-clipboard (clipboard)
- hyprpicker (color picker)
- [lushwal for nvim](https://github.com/oncomouse/lushwal.nvim)
  - colors for LazyVim
- tlp (manage battery usage)
- hyprpanel? (need to see if works well)

## Yay Dependencies ?

- hypridle
- nerd-fonts (choose 0xProto)
- ttf-jetbrains-mono
- otf-font-awesome

## custom rice setup instructions

- add `brown_city_planet_w.jpg` to ~/Pictures/Wallpapers
- copy all scripts to Documents/scripts

## make sure to run 
- wal -i ///some-picture-file

