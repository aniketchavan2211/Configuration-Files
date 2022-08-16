#/bin/sh

# Updating and Upgrading Packages
apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean

# Installing requiring packages
pkg install git zsh proot proot-distro openssh nano wget curl python sqlite neofetch man figlet
