#Custom zshrc by eccentricayman on Github
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
$HOME/Scripts/invaders.sh

#pacman
#$HOME/Scripts/pacman.sh

#loads theme
autoload -Uz promptinit
promptinit
prompt sorin

#base16 color scheme
BASE16_SHELL="$HOME/.config/base16-shell/base16-google.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#doesnt autocorrect similar commands
unsetopt CORRECT
alias emacss="emacsclient -c"
alias skeltal="lua $HOME/Scripts/dootdoot.lua"
alias cpd="pwd | xclip -selection clipboard"
alias thanaz="cowsay fuck off ; sleep 3 ; exit"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
function gitshit() {
    git add --all && git commit -m "$1" && git push 
}   
#sets default terminal editor to vim
export EDITOR=vim

