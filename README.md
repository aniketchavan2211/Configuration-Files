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
pkg install git
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
cat ~/ssh/id_ed25519.pub
```

Copy the text & paste in SSH & GPG keys section

- Add new `SSH` key 
- Give it a title 
- and paste the text

Link:
[SSH AND GPG KEYS](https://github.com/settings/keys)

### Oh-My-Zsh & Powerlevel10k

1. Install zsh shell using package manager

```
apt install zsh
```

2. Make your default shell

```
# chsh -s $(which zsh)
chsh -s zsh
```

3. Restart the terminal 

4. To verify 

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

***`Note` : You can replace `apt-get` with `apt` & `pkg`.***


 - Install C/C++/ObjectiveC
 ```
 apt-get install clang
 ```

 To run `C` program 
 ```
 clang file.c
 ./a.out
 ```

 To run `C++` program
 ```
 c++ file.cpp
 ./a.out
 ```

  - Install python3 and python2
 ```
 apt-get install python
 apt-get install python2
 ```

 - Install Java
 ```
 apt-get install openjdk-17
 ```

 - Install Ruby
 ```
 apt-get install ruby
 ```

 - Install Swift
 ```
 apt-get install swift 
 ```

 - Install dart
 ```
 apt-get install dart
 ```
 
 - Install Go
 ```
 apt-get install golang
 ```

 - Install Kotlin
 ```
 apt-get install Kotlin
 ```

 - Install Lua
 ```
 apt-get install lua51 lua52 lua53 lua54
 ```

 - Install perl
 ```
 apt-get install perl
 ```

 - Install Rust
 ```
 apt-get install rust
 ```

 - Install Php
 ```
 apt-get install php php7
 ```

 - Install sqlite
 ```
 apt-get install sqlite
 ```

 - Install mariadb
 ```
 apt-get install mariadb 
 ```

 - Install Elixir
 ```
 apt install elixir
 ```

 - Install Erlang
 ```
 apt-get install erlang
 ```

 - Install Gawk
 ```
 apt-get install gawk
 ```
 - Install Solidity
 ```
 apt-get install solidity 
 ```

## Shell scripting

 - bash 
 - zsh
 - fish
 - tcsh (csh)

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
