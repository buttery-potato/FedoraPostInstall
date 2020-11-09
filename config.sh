#!/bin/bash

sudo systemctl disable --now firewalld
sudo systemctl enable --now  ufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing




