discord works out of the box, but may be a bit blurry if using Hyprland.
you may want to create a new .desktop file to run discord with the options 
`--enable-features=WaylandWindowDecorations --ozone-platform-hint=auto`

put the following in /home/\<user\>/.local/share/applications
```
[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/usr/bin/discord --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto
Icon=discord
Type=Application
Categories=Network;InstantMessaging;
Path=/usr/bin
```
