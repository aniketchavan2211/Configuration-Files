#/bin/sh

# Updating and Upgrading Packages
apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean

# Installing requiring packages
pkg install git zsh proot proot-distro openssh nano wget curl python sqlite neofetch man figlet

# Tmux (multi-terminal on same terminal)
# install by uncomment or use below command
# pkg install tmux

# Install Oh-My-Zsh & fonts & Powerline10k
cd ~/

# Oh-My-Zsh
# wget sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerline font
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

# Powerline10k theme
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
