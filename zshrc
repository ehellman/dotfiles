CONFIG="$HOME/.config/dotfiles"
ANTIGEN="$HOME/.antigen"

# npm
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source $CONFIG/aliases
source $CONFIG/functions

source $CONFIG/plugins/zsh-syntax-highlighting-filetypes.zsh

autoload -U colors && colors
autoload -U promptinit && promptinit
setopt promptsubst
prompt pure

# antigen
source $CONFIG/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle brew
antigen bundle npm
antigen bundle osx
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# apply
antigen apply


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

eval $( dircolors -b $HOME/.config/dotfiles/LS_COLORS )

# zmodload -a colors
# zmodload -a autocomplete
# zmodload -a complist
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
