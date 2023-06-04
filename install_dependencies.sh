#!/bin/bash
#To download packages, clean local cache, quiet install, and refresh database
base_os = `grep '^ID_LIKE' /etc/os-release`
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if [[ $base_os == *arch ]]; then
        echo "Arch-based OS detected"
        echo "Installing required packages for arch based systems from Official Arch repositories..."
        pacman -Scq --noconfirm --noprogressbar xorg-xset
        #To download packages, clean local cache, quiet install, and refresh database

    elif [[ $base_os == *debian ]]; then
        echo "Debian-based OS detected"
        apt-get -y install x11-xserver-utils
    # more distros to be added
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # similar installation process for macOS
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "win32" ]]; then
        # similar installation process with Windows packages
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # similar installation for freeBSD package manager
else
        # Unknown.
fi


