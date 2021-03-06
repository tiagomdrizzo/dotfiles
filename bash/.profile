#!/bin/bash

# README
# The ~/.profile is used by many shells as fallback. This is used by X11.
# Wayland uses a different approach.
# The simplest way to set environment variables for a single user under systemd (version 233 or later),
# is to create a .conf file in ~/.config/environment.d, containing lines of the form NAME=VAL.
# See man 5 environment.d

# GDM also supports the /usr/share/gdm/env.d/ drop-in directory. Files dropped in there also contain
# lines of the form NAME=VAL. These affect all users of the system.

# It should have been set by the login manager, according to the value of the DesktopNames found in the session file.
# the entry in the session file has multiple values separated in the usual way: with a semicolon.
#export XDG_CURRENT_DESKTOP=KDE
#export XDG_CURRENT_DESKTOP=GNOME

# Qt5
# Unlike Qt4, Qt5 doesn't ship a qtconfig utility to configure fonts, icons or styles. Instead, it will try to use
# the settings from the running DE. In KDE Plasma or GNOME this works well, but in other less popular DEs or WM in
# it can lead to missing icons in Qt5 applications. One way to solve this is to fake the running desktop environment
# by setting XDG_CURRENT_DESKTOP=KDE or GNOME, and then using the corresponding configuration application to set the
# desired icon set.
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORMTHEME=gnome

# Disable QT scale factor
# For per application configuration add env QT_AUTO_SCREEN_SCALE_FACTOR=0
# to the Exec line inside the app_name.desktop file in the directory:
# .local/share/applications or /usr/share/applications/
# Enables automatic scaling, based on the pixel density of the monitor. This will not change the size of point sized
# fonts, since point is a physical unit of measure. Multiple screens may get different scale factors.
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Force wayland on qt apps
#export QT_QPA_PLATFORM=wayland
#export QT_WAYLAND_FORCE_DPI=96
#export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

export PATH="${HOME}/usr/bin:${PATH}"
