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

# sxhkd &
export XDG_MENU_PREFIX="plasma-" &
export QT_QPA_PLATFORMTHEME="qt5ct" &
nm-applet &
xset -b & #For annoying beeping sound
start-pulseaudio-x11 &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
lxpolkit &
picom &
dunst &

slstatus &
xrandr --output DP-0 --auto --primary --mode 2560x1440 --rate 240.00 &
xrandr --output HDMI-A-1 --auto --mode 1920x1080 --rate 60.00 --right-of DP-0 &
nvidia-settings --load-config-only &
xdotool mousemove 1280 720 & #set pointer to right position
xinput set-prop 'Logitech USB Receiver' 'libinput Accel Speed' -0.4 &

exec dwm
