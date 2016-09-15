#!/bin/sh

#RUN WIT SUDO

#brew
echo "installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "installing stuffs..."
brew install emacs --with-cocoa
brew install vim
brew install tmux
brew install zsh
brew install iterm2
brew install neofetch
chsh -s /bin/zsh

#emacs first
echo "installing emacs stuff..."
cp Emacs/.emacs ~
cp -av Emacs/.emacs.d ~
echo "Open emacs, then do: C-u-0 M-x byte-recompile-directory ~/.emacs.d"

echo "installing monaco powerline..."
git clone https://gist.github.com/1838072.git fontu
sudo cp fontu/* /Library/Fonts
rm -rf fontu

echo "installing vundle/vim stuff..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp Vim/.vimrc ~
echo "do vim ~/.vimrc then do :source % then do :PluginInstall"

echo "installing base16..."
mkdir ~/Github
git clone https://github.com/chriskempson/base16-shell.git ~/Github/base16-shell

echo "installing tmux conf..."
cd ~
rm -rf ~/.tmux
cp Tmux/.tmux ~
cp Tmux/.tmux.conf.local ~
ln -s ~/.tmux/.tmux.conf
cd -

echo "installing zsh..."
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
cp -f Zsh/.zshrc ~
echo "add 'GIT' \ to the .zpreztorc someone in the list"
sudo -k

