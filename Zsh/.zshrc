#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#shows arch logo
#screenfetch

#shows background + screenfetch
#fetch
    
#invaders!
#$HOME/Scripts/invaders.sh

#pacman
$HOME/Scripts/pacman.sh
    
#loads theme
autoload -Uz promptinit
promptinit
prompt sorin

#base16 color scheme
BASE16_SHELL="$HOME/.config/base16-shell/base16-google.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#doesnt autocorrect similar commands
unsetopt CORRECT

#better than cd ..
upup(){ DEEP=$1; [ -z "${DEEP}" ] && { DEEP=1; }; for i in $(seq 1 ${DEEP}); do cd ../; done; }
    
alias emacss="emacsclient -c"
alias thanksmrskeltal="lua $HOME/Scripts/dootdoot.lua"
alias up="upup"
alias cpd="pwd | xclip -selection clipboard"

#sets default terminal editor to vim
export EDITOR=vim