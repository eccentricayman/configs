#!/bin/bash

#vars
HOME=$(eval echo ~${SUDO_USER})
echo "CHECK WARNING.TXT IN HOME DIRECTORY FOR ISSUES"
touch ${HOME}/warning.txt
WARNING=${HOME}/warning.txt

#all the homedir stuff (bash, emacs)
cp -v Bash/.bashrc ${HOME}
cp -v Emacs/.emacs ${HOME}
cp -avr Emacs/.emacs.d ${HOME}

#installing scripts
if [ ! -d "${HOME}/Scripts" ]; then
    cp -avr Scripts ${HOME}
else
    cp -v Scripts/* ${HOME}/Scripts
fi

#installing i3
if [ ! -d "${HOME}/.i3" ]; then
    cp -avr i3/.i3 ${HOME}
else
    cp -v i3/.i3/* ${HOME}/.i3
fi

if [ ! -d "${HOME}/.config/i3" ]; then
    echo "Install i3!"
    echo "NEEDS I3 INSTALLED" >> $WARNING
    mkdir ${HOME}/.config/i3
    cp -v i3/config ${HOME}/.config/i3
else
    cp -v i3/config ${HOME}/.config/i3
fi

#installing sublimetext3
if [ ! -d "${HOME}/.config/sublime-text-3" ]; then
    echo "Install Sublime Text 3!"
    echo "NEEDS SUBLIME TEXT INSTALLED" >> $WARNING
    mkdir ${HOME}/.config/sublime-text-3/Packages/User
    cp -v Sublime_Text_3/"Package Control.sublime-settings" ${HOME}/.config/sublime-text-3/Packages/User
    cp -v Sublime_Text_3/Preferences.sublime-settings ${HOME}/.config/sublime-text-3/Packages/User
else
    cp -v Sublime_Text_3/"Package Control.sublime-settings" ${HOME}/.config/sublime-text-3/Packages/User
    cp -v Sublime_Text_3/Preferences.sublime-settings ${HOME}/.config/sublime-text-3/Packages/User
fi

#installing cava
if [ ! -d "${HOME}/.config/cava" ]; then
    echo "Install Cava!"
    echo "NEEDS CAVA INSTALLED" >> $WARNING
    mkdir ${HOME}/.config/cava
    cp -v Cava/config ${HOME}/.config/cava
else
    cp -v Cava/config ${HOME}/.config/cava
fi

#installing tmux
if [ ! -d "${HOME}/.tmux" ]; then
    echo "Install Tmux!"
    echo "NEEDS TMUX INSTALLED" >> $WARNING
    mkdir ${HOME}/.tmux
    cp -v Tmux/.tmux/* ${HOME}/.tmux
    cp -v Tmux/.tmux.conf ${HOME}
else
    cp -avr Tmux/.tmux ${HOME}
    cp -v Tmux/.tmux.conf ${HOME}
fi

#installing vim
if [ ! -d "${HOME}/.vim" ]; then
    echo "Install Vim!"
    echo "NEEDS VIM INSTALLED" >> $WARNING
    cp -v Vim/.vimrc ${HOME}
else
    cp -v Vim/.vimrc ${HOME}
fi

#installing zsh
if [ ! -d "${HOME}/.zprezto" ]; then
    echo "Install Zprezto!"
    echo "NEEDS ZPREZTO INSTALLED" >> $WARNING
    echo "CANNOT TELL IF ZSH INSTALLED OR NOT" >> $WARNING
    cp -v Zsh/.zshrc ${HOME}
    cp -v Zsh/zpreztorc ${HOME}/.zprezto/runcoms/zpreztorc
else
    cp -v Zsh/.zshrc ${HOME}
    cp -v Zsh/zpreztorc ${HOME}/.zprezto/runcoms/zpreztorc
fi

#installing fonts
if [ ! -d "${HOME}/.config/fontconfig" ]; then
    echo "CREATED FONT CONFIGS FOR BETTER FONT RENDERING" >> $WARNING
    mkdir ${HOME}/.config/fontconfig
    cp -v Fonts/font.conf ${HOME}/.config/fontconfig
else
    cp -v Fonts/font.conf ${HOME}/.config/fontconfig
fi

if [ ! -d "/usr/share/fonts" ]; then
    echo "Making fonts dir..."
    echo "NEW FONTS DIRECTORY IN USR WAS MADE" >> $WARNING
    cp -avr Fonts/fonts /usr/share
else
    echo "ADDED NEW FONTS TO CURRENT FONT DIRECTORY" >> $WARNING
    cp -avr Fonts/fonts/* /usr/share/fonts
fi

sudo -k
echo "Check the WARNING.TXT in your home directory for full installation."
sleep 3
