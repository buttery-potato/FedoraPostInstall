# post install script for Fedora Workstation Edition

# upgrade and install packages
sudo dnf upgrade -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install fish ufw neofetch gnome-tweaks util-linux-user htop flat-remix-theme inxi flameshot -y
#configure firewall
sudo systemctl disable --now firewalld
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Remember to install the extensions \"Dash To Dock\" and \"User Themes\"!"
