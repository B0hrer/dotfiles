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
fi &

sxhkd &
nm-applet &
xset -b & #For annoying beeping sound
start-pulseaudio-x11 &
xsetroot -cursor_name left_ptr &

exec bspwm
