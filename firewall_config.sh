#!/bin/bash

sudo systemctl disable --now firewalld
sudo systemctl enable --now  ufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Thanks for using my post-install script. If there were any bugs, please report them at my github page at https://www.github.com/buttery-potato/Fedora-Post-Install-Script/issues."


