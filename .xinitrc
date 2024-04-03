#!/bin/sh

# add input language and set keybind
setxkbmap -layout us,ar -option grp:win_space_toggle

# launch the mouse cursor concealer
unclutter -idle 3 &

# launch the status bar
slstatus &

# launch the window manager
exec dwm
