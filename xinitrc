#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

#.Xresources

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

nm-applet&
syndaemon -t -k -i 2 -d &
#unclutter -idle 1.5 -grab&
#setxkbmap -layout dk #-variant dvorak&
setxkbmap dk2
synclient FingerLow=1 FingerHigh=10 PalmDetect=1 PalmMinZ=90 PalmMinWidth=8&
dropbox-cli start&
xbindkeys&
(sleep 1; whatpulse)&
whatpulse&
udiskie --tray &
xflux -l 11 -g 55&
volnoti
setxkbmap -option compose:rwin&
xmodmap .Xmodmap&

#exec awesome
exec i3

#exec xbmc
#exec xmonad
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
