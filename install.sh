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

if [ $# -eq 0 ]; then
	echo "Usage: 
    -p install programs in programs file
    -d install dropbox
    -s install solarized
    -f overwrite dotfiles
    -t install sublime text 3
    -h this help message"
	exit 1 
fi

user=$(whoami)

if [ $user = "root" ]; then
	:
else
	echo "Not root. Need to use sudo."
	exit
fi


while getopts ":pdsfth" opt; do
	case $opt in
		p)
			# programs
			if  ask "Install Programs?" N; then
				while read p; do
					echo "Installing $p"
					apt-get install $p
				done <programs
				# oh my zsh
				curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
				# theme file
				mv yknot.zsh-theme ~/.oh-my-zsh/themes/
			else
				echo "Skipping..."
			fi
			;;
		d)
			# dropbox
			if ask "Install Dropbox?" N; then
				curl -L -O https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
				dpkg -i dropbox_2015.02.12_amd64.deb
				
				rm dropbox_2015.02.12_amd64.deb
			else
				echo "Skipping..."
			fi
			;;
		s)
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
			;;
		f)
			if ask "Overwrite dotfiles?" N; then
	
				# dot files
				mv dotFiles/* ~/
	
				eval `dircolors ~/.dircolors`
			else
				echo "Skipping..."
			fi
			;;
		t)
			# sublime text 3
			if ask "Install Sublime Text 3?" N; then
				curl -L -O http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb
				dpkg -i sublime-text_build-3065_amd64.deb
				
				rm sublime-text_build-3065_amd64.deb
			else
				echo "Skipping..."
			fi
			;;
		h)
			echo "Usage: 
    -p install programs in programs file
    -d install dropbox
    -s install solarized
    -f overwrite dotfiles
    -t install sublime text 3
    -h this help message" >&2
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			;;
	esac
done
		









