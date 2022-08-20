#/bin/sh

alias UC='apt update -y && apt upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg update -y && pkg upgrade -y && pkg autoclean'

# motd
echo -en  "\n Welcome to Termux \n\n Hey Aniket,\n\n System info:  \n\n" > ~/../usr/etc/motd

# adding neofetch to zshrc file
pkg install neofetch
echo -en "neofetch" >> ~/../usr/etc/zshrc

# adding neofetch to bash.bashrc file
echo -en "neofetch" >> ~/../usr/etc/bash.bashrc


