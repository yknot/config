#!/bin/bash


## default ask function 
ask() {
    # http://djm.me/ask
    while true; do
 
        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi
 
        # Ask the question
        read -p "$1 [$prompt] " REPLY
 
        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi
 
        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
 
    done
}

echo "Downloading config..."
git clone https://github.com/yknot/config.git
cd config
 

# programs
if ask "Install Programs?" N; then
    apt-get install --ignore-missing screen htop autojump ipython python-pip python-dev build-essential emacs24 ack-grep zsh 
	# oh my zsh
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	# theme file
	mv yknot.zsh-theme ~/.oh-my-zsh/themes/
else
	echo "Skipping..."
fi





# dropbox
if ask "Install Dropbox?" N; then
	curl -L -O https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
	dpkg -i dropbox_2015.02.12_amd64.deb
	
	rm dropbox_2015.02.12_amd64.deb
else
	echo "Skipping..."
fi




if ask "Install Solarized?" N; then
	
	# solarized
	git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
	cd gnome-terminal-colors-solarized
	./set_dark.sh


	cd ..

	rm -rf gnome-terminal-colors-solarized
else
	echo "Skipping..."
fi

if ask "Overwrite dotfiles?" N; then
	
	# dot files
	mv dotFiles/* ~/
	
	eval `dircolors ~/.dircolors`
else
	echo "Skipping..."
fi











