#!/bin/bash
# post install script for Fedora Workstation Edition


# upgrade and install packages
sudo dnf upgrade -y
sudo dnf install fish ufw neofetch gnome-tweaks util-linux-user htop inxi -y

sudo sh ./config.sh
