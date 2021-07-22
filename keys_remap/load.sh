sudo cp -f caps_swap /usr/share/X11/xkb/symbols/pc
sudo rm -rf /var/lib/xkb/*
setxkbmap -option caps:swapescape

