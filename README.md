# Configuration-Files

# Updating and Upgrading Packages
```
apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean
```

make an shortcut using alias
```
alias UC='apt update -y && apt upgrade -y && pkg update -y && pkg upgrade -y && apt-get update -y && apt-get upgrade -y && apt autoremove && pkg autoclean                   '
```
# Termux Storage Permission
```
termux-setup-storage
```
## GitHub
```
pkg install git
```

### Connecting to GitHub with SSH

Reference:
 [Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

### Generating a new SSH key and adding it to the ssh-agent

Reference:
 [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

 Select `linux`
 Follows the Commands

### Generating a new SSH key
```
ssh-keygen -t ed25519 -C "aniketchavan2211@gmail.com"
```

```
eval "$(ssh-agent -s)"
```

```
ssh-add ~/.ssh/id_ed25519
```

### Adding a new SSH key to your account
```
cat ~/ssh/id_ed25519.pub
```

Copy the text & paste in SSH & GPG keys section

- Add new `SSH` key 
- Give it a title 
- and paste the text

Link:
[SSH AND GPG KEYS](https://github.com/settings/keys)

## Oh-My-Zsh & Powerlevel10k theme

1. Install zsh shell using package manager

```
apt install zsh
```

2. Make your default shell

```
chsh -s $(which zsh)
```

3. Restart the terminal 

4. To verify 

```
echo $SHELL
whereis $SHELL
which $SHELL
```

### Install Oh-My-Zsh

Download using wget
```
pkg install wget
```

```
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```

[ Oh My Zsh - GitHub ](https://github.com/ohmyzsh/ohmyzsh)

### Install fonts

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

### Powerlevel10k

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
#ENABLE_CORRECTION="true"
//to this
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

### Some usefull Git plugins 


Restart terminal 
Edit settings using `p10k configure`

```
p10k configure
```

## Using Git repo zshrc file 
This will delete existing zshrc file create symbolic link

```zsh
rm -rf .zshrc | ln -s ~/Configuration-Files/.zshrc ~/.zshrc
```

### Nano text editor

```
pkg install nano
```


**Improved Nano Syntax Highlighting FIles**

Clone this repo in `etc/share/`
```
git clone https://github.com/scopatz/nanorc.git $install_path
```

**Include/append our nanorc file**

directory nanorc 

```
cd nanorc
cp /nanorc ~/../usr/etc/

```
Copy nanorc files and paste in /etc/ directory
Replace new with previous one.

Or
Manual edit `nanorc` file in `etc` dir
```
include "/data/data/com.termux/files/usr/share/nanorc/*.nanorc"
```
this will select all `.nanorc` files from dir `nanorc`


**Fixed the error in nanorc.nanorc**

Edit nanorc.nanorc file in dir nanorc using text editor nano or vim


Remove **brightnormal** 

replace **with normal**

## motd 

motd file display text which you will see 
when opening terminal like homepage

context content in it will display on terminal

## bashrc

Delete the existing `bashrc` file and create link from Configuration-files repo 

```bash
rm -rf ~/../usr/etc/bash.bashrc | ln -s ~/Configuration-Files/bash.bashrc ~/../usr/etc
```

## Proot 

```
apt install proot proot-distro
```

adding NetHunter.sh  kali.sh and parrot.sh file
```
cp nethunter.sh kali.sh parrot.sh ~/../usr/etc/proot-distro/
```

