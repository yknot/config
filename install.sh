#!/bin/bash


# programs
apt-get install --ignore-missing screen htop autojump ipython python-pip python-dev build-essential emacs24 ack-grep zsh 


# oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh



# dropbox
curl -L -O https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
dpkg -i dropbox_2015.02.12_amd64.deb

rm dropbox_2015.02.12_amd64.deb




# solarized
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./set_dark.sh

cd ..

rm -rf gnome-terminal-colors-solarized


# dot files
mv dotFiles/* ~/

eval `dircolors ~/.dircolors`

# theme file
mv yknot.zsh-theme ~/.oh-my-zsh/themes/







