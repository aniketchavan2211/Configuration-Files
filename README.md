## Configuration-Files

## Updating and Upgrading Packages
Package list and package will delete older version, install new version
```
apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean
```

Making shortcut for updating and upgrading using  alias command
```
alias UC='apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean'
```

----

- For bash user
```
echo "alias UC='apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean'" >> $PREFIX/etc/bash.bashrc
```

- For zsh user
```
echo "alias UC='apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean'" >> $PREFIX/etc/zshrc
```

> Command will add those lines to bash.bashrc and zshrc.  
> Alias will be permanent, 
> to change edit bash.bashrc and zshrc file 

## Bash Prompt 

Default Bash Prompt

```bash
# RED
PS1='\033[1;99m┌──(\e[1;31m\u@\h\e[0m\033[1;99m)—[\[\e[1;34m\]\w\[\e[0m\]\033[1;99m] \n\033[1;99m└─\[\e[0;97m\]\$\[\e[0m\]  '
```

```bash
# BLUE
PS1='\033[1;99m┌──(\e[1;34m\u@\h\e[0m\033[1;99m)—[\[\e[1;32m\]\w\[\e[0m\]\033[1;99m] \n\033[1;99m└─\[\e[0;97m\]\$\[\e[0m\] '
```
## Termux Storage Permission

**If you already give permission then type 'n' for no not to create new home directory for termux**

```
termux-setup-storage
```
### Termux Change Repo

```
termux-change-repo
```

## Man(ual) pages
```
pkg install man
```

Need help for nano, bash, zsh, others packages
```
man nano
man bash
man zsh
man <PACKAGE_NAME>
```

## Hush Login

```
touch ~/.hushlogin
```

`touch` :- command will create file,
`~/` :- specify the home directory,
`.` :- hidden file
`hushlogin` :- file will disable motb

**deleting the hushlogin file will enable hushlogin(Homepage)**


## SSH

Secure shell(ssh) Protocol 

```
pkg install openssh
```

To start ssh server in termux
```
sshd
```
SSH Server hosts port:8022

Connecting SSH Server (Client side)
```
ssh user@ip -p 8022
```

specifying username
To check user
```
whoami
```

To check IP
```
ifconfig
```

To change password of user
```
passwd
```

port `8022` for openssh
Default port for ssh `22`

## ftp

To start server Install busybox and termux-services
```
pkg install busybox termux-services
```

To enable ftp service
```
sv-enable ftpd
```

To open ftp service 
```
sv up ftpd
```

To close ftp service
```
sv down ftpd
```

Client side ftp

Connect to ftp server 
```
ftp <ip> -p 8021
```

Default port for ftp is: `21`
But for this is termux-service: `8021`

## GitHub

```
apt-get install git
```

```
apt-get install openssh -y
```

#### Connecting to GitHub with SSH

Reference:
 [Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

#### Generating a new SSH key and adding it to the ssh-agent

Reference:
 [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

 Select `linux`
 Follows the Commands

#### Generating a new SSH key
```
ssh-keygen -t ed25519 -C "aniketchavan2211@gmail.com"
```

```
eval "$(ssh-agent -s)"
```

```
ssh-add ~/.ssh/id_ed25519
```

#### Adding a new SSH key to your account
```
cat ~/.ssh/id_ed25519.pub
```

Copy the text & paste in SSH & GPG keys section

- Add new `SSH` key 
- Give it a title 
- and paste the text

Link:
[SSH AND GPG KEYS](https://github.com/settings/keys)

**Some Important Commands**
```
git init 
```

```
git config --global user.name aniketchavan2211
```

```
git config --global user.email aniketchavan2211@gmail.com
```

```
git clone <url include https/ssh link>
```

```
git add .
```

```
git commit -m 'msg`
```

```
git push -u origin master 
git push
```

```
git pull
```

```
# Deleting dir/files
rm -rf <dir/files>
git rm <dir/files>
```

```
git log
# Commits of Logs
```

### Oh-My-Zsh & Powerlevel10k

1. Install zsh shell using package manager

```
apt install zsh -y
```

2. Make your default shell

```
# chsh -s $(which zsh)
chsh -s zsh
```

3. Restart the terminal 

4. To verify 

You will see `$` is replace by '%'      

`$` means bash ['#' for bash root user].      
`%` means zsh  ['#' for zsh root user].    

```
echo $SHELL
whereis $SHELL
which $SHELL
```

#### Install Oh-My-Zsh

Download using wget
```
pkg install wget
```

```
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

[ Oh My Zsh - GitHub ](https://github.com/ohmyzsh/ohmyzsh)

#### Install fonts

[Powerline Fonts](https://github.com/powerline/fonts) or [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

**Powerline fonts**

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

This clone repo
Install it 
And delete the repo

#### Powerlevel10k

Cloning git repo
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

### Download Plugins for autosuggestion and syntax highlighting

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

Find the `ZSH_THME` and replace it with
```
ZSH_THEME="powerlevel10k/powerlevel10k
```

If you want to enable auto correction then find uncomment the line by removing `#` from
```
# ENABLE_CORRECTION="true"
# to this (Uncomment the line)
ENABLE_CORRECTION="true"
```
Now we will add plugins so scroll down a little till you find
```
plugins=(git)
```
And now add the plugins which we downloaded, like this
```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

#### Some usefull Git plugins 


Restart terminal 
Edit settings using `p10k configure`

```
p10k configure
```

## Programming languages

[Development Environment website](https://wiki.termux.com/wiki/Development_Environments)

***`Note` : You can replace `apt-get` with `apt` & `pkg`.***


### C/C++/ObjectiveC
 ```bash
 apt-get install clang
 ```

1.  **To run `C` program**
 ```bash
 clang file.c
 ./a.out
 ```

2.  **To run `C++` program**
 ```bash
 c++ file.cpp
 ./a.out
 ```

### python2 and python3
 ```bash
 # Note python Package will installed Python2.x.x and Python3.x.x
 apt-get install python2 python
 ```

### Java
 ```bash
 apt-get install openjdk-17
 ```

 1. To COMPLIE
 ```bash
 javac file.java
 ```

 2. To RUN
 ```bash
 java hello
 ```

 ```bash
 apt-get install ecj dx
 ```

 1. To COMPILE
 ```
 ecj hello.java
 ```

 2. To COMPILE to `.dex` file
 ```bash
 dx --dex --output=dexfile.dex classname.class

 # EXAMPLE:
 dx --dex --output=hello.dex hello.class
 ```
 3. To RUN in Dalvikvm
 ```bash
 # DON'T add .class after classname
 dalvikvm -cp dexfile.dex classname 

 # EXAMPLE:
 dalvikvm -cp hello.dex hello
 ```


### Ruby
 ```bash
 apt-get install ruby
 ```

### Swift
 ```bash
 apt-get install swift 
 ```

### dart
 ```bash
 apt-get install dart
 ```
 
### Go
 ```bash
 apt-get install golang
 ```

### Kotlin
 ```bash
 apt-get install Kotlin
 ```

### Lua
 ```bash
 apt-get install lua51 lua52 lua53 lua54
 ```

### Perl
 ```bash
 apt-get install perl
 ```

### Rust
 ```bash
 apt-get install rust
 ```

### PHP
 ```bash
 apt-get install php php7
 ```

### SQLite
 ```bash
 apt-get install sqlite
 ```

### mariadb
 ```bash
 apt-get install mariadb 
 ```

### Elixir
 ```bash
 apt install elixir
 ```

### Erlang
 ```bash
 apt-get install erlang
 ```

### Gawk
 ```bash
 apt-get install gawk
 ```
### Solidity
 ```bash
 apt-get install solidity 
 ```
 
### Deno
 ```bash
 apt-get install deno
 ```

## Shell scripting

 - bash 
 - zsh
 - fish
 - tcsh (csh)

## Nano Text Editor
```bash
apt-get install nano
```

```bash
# python.nanorc
wget https://raw.githubusercontent.com/scopatz/nanorc/master/python.nanorc

# bash.nanorc / sh.nanorc
wget https://raw.githubusercontent.com/scopatz/nanorc/master/sh.nanorc

# c.nanorc / cpp.nanorc
wget https://raw.githubusercontent.com/scopatz/nanorc/master/c.nanorc

# java.nanorc
wget https://raw.githubusercontent.com/scopatz/nanorc/master/java.nanorc
```

## Packages Repository

```
pkg install x11-repo
pkg install root-repo
```

## Proot 

PRoot is a user-space implementation of chroot, mount --bind, and binfmt_misc. This means that users don't need any privileges or setup to do things like using an arbitrary directory as the new root filesystem, making files accessible somewhere else in the filesystem hierarchy, or executing programs built for another CPU architecture transparently through QEMU user-mode.

```Shell
apt-get install proot
```

Termux provides a package proot-distro which takes care of management of the Linux distributions inside Termux. You can install this utility by executing

```Shell
apt-get install proot-distro
```

## Docker

Installing Docker in Termux.

```bash
apt-get install root-repo
apt-get install docker
```

## Database 

### MySQL Database

Install Mariadb Package
```bash
apt-get install mariadb
```
Start MySQL Server
```
mysqld
```
Stop MySQL Server
```
pkill sql
```

Connect MySQL client prompt Command line
```
mysql
```

Command will execute as root user
```
mysql -u $(whoami)
```

Set Password for Root User
```
use mysql;
```
```
set password for 'root'@'localhost'=password('passwd');
```

```
flush privileges;
quit;
```

```

mysql -u root -p
```

## Windows Command Prompt (CMD)

To run CMD in Termux, you need to
Install Linux Distro.

Install other Distro by,
```bash
apt install proot proot-distro
proot-distro list # list Linux distro
```
Install one of them,
and also update and upgrade them.

```bash 
# install linux system
# proot-distro
# run
sudo apt install wine -y
wine cmd
```

Install wine package,
Made for linux system
To run windows software.
