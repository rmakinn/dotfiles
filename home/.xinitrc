#! /usr/bin/env sh

# Test below:
#USERXSESSION="$XDG_CACHE_HOME/x11/xsession"
#USERXSESSIONRC="$XDG_CACHE_HOME/x11/xsessionrc"
#ALTUSERXSESSION="$XDG_CACHE_HOME/x11/Xsession"
#ERRFILE="$XDG_CACHE_HOME/x11/xsession-errors"

# set fallback cursor (ty bspwm)
xsetroot -cursor_name left_ptr

# set wallpaper 
hsetroot -full ~/lib/wal/cherry-blossom-spring-pink-flowers.jpg -blur 0.8 -contrast 0.8

# make kb fast
xset r rate 300 50 &

# hide cursor after delay
unclutter --timeout 30 --ignore-scrolling -b &

# blue-light filter
sct 4500 &

start-pulseaudio-x11 &

# compositor
#xcompmgr -c

# launch window manager
exec dbus-launch --sh-syntax --exit-with-session bspwm
