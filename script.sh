#!/bin/bash
# post install script for Fedora Workstation Edition

sudo su

# upgrade and install packages
dnf upgrade -y
dnf install fish ufw neofetch gnome-tweaks util-linux-user htop inxi -y

# configure ufw
systemctl disable --now firewalld
systemctl enable --now  ufw
ufw enable
ufw default deny incoming
ufw default allow outgoing

echo "Thanks for using my post-install script. If there were any bugs, please report them at my github page at https://www.github.com/buttery-potato/Fedora-Post-Install-Script/issues.


