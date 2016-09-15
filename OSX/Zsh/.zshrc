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

#loads theme
autoload -Uz promptinit
promptinit
prompt sorin

#fetch
neofetch

#colorz
/Users/eccentricayman/Github/base16-shell/scripts/base16-brewer.sh

alias gvim="open -a macvim"
alias lock="/Applications/Lock"

function gitshit() {
    git add --all && git commit -m "$1" && git push
}
