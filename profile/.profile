# sxhkd &
export QT_QPA_PLATFORMTHEME="qt5ct" &
nm-applet &
xset -b & #For annoying beeping sound
start-pulseaudio-x11 &
xsetroot -cursor_name left_ptr &
nitrogen --restore &
lxpolkit &
picom --experimental-backends

slstatus &
xrandr --output DVI-D-0 --auto --mode 1920x1080 --rate 144.00 &
xrandr --output DP-1 --auto --mode 1920x1080 --rate 60.00 --right-of DVI-D-0 &
nvidia-settings --load-config-only &
xdotool mousemove 960 540 & #set pointer to right position

exec dwm &


