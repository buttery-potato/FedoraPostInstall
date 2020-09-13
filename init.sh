#!/bin/bash
# post install script for Fedora Workstation Edition


# upgrade and install packages
sudo dnf upgrade -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install fish ufw neofetch gnome-tweaks util-linux-user htop inxi deluge flat-remix-theme -y

sudo sh ./config.sh
