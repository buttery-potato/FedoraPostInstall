# post install script for Fedora Workstation Edition

# upgrade and install packages
sudo dnf upgrade -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install fish ufw neofetch gnome-tweaks util-linux-user htop flat-remix-theme inxi flameshot code nim -y
sudo dnf group upgrade multimedia
#configure firewall
sudo systemctl disable --now firewalld
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Remember to install the extensions \"Dash To Dock\" and \"User Themes\"!"
