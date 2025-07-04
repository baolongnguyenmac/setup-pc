# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# install the following packages to use sway
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ref: https://wiki.debian.org/sway#Installation

# install sway
sudo apt install sway

# sway background: change background
sudo apt install swaybg

# idk what it is, but we have to install it
sudo apt install swayidle

# a screen locking utility for Wayland compositors
sudo apt install swaylock

# terminal
sudo apt install foot

# enables applications to utilize features like screen sharing and screenshots within a Wayland environment
sudo apt install xdg-desktop-portal-wlr

# a compatibility layer that allows X11 applications to run on Wayland-based display servers
sudo apt install xwayland

# modify bright
sudo apt install brightnessctl

# menu launcher
sudo apt install wofi

# screenshot
sudo apt install grim slurp
sudo apt install wl-clipboard # save screenshot to clipboard

# shoot notification by notify-sent "your notification"
sudo apt install libnotify-bin

# lib app-indicator
sudo apt-get install libayatana-indicator3-1

# gdm3 for login? i think that i have accidentally removed it somewhere, which leads to the fact that i can't use display manager (gdm3) at login (it shows a console instead)
sudo apt install gdm3
sudo systemctl start gdm3
sudo dpkg-reconfigure gdm3

# # lock screen -> build from source
# sudo apt install swaylock-fancy

