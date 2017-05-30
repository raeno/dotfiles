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

bindkey -v                                          # Use vi key bindings
bindkey '^r' history-incremental-search-backward    # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.

# emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

setopt rmstarsilent
export PATH="$PATH:/usr/local/bin:$HOME/.rvm/bin:$HOME/bin" # Add RVM to PATH for scripting
 PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" # Add coreutils

export PATH="$PATH:/usr/local/smlnj/bin"  #smlnj - coursera programming languages

# added by Anaconda2 4.3.1 installer
export PATH="/Users/raeno/anaconda2/bin:$PATH"

export EDITOR="nvim"
export BUNDLER_EDITOR="nvim"
export SMLNJ_HOME="/usr/local/smlnj"

alias e='emacsclient -t'
alias ec='emacsclient -c'
alias vim='nvim'
alias weather='yandex-weather-cli'

alias lss='ls -al -h -S'

alias sicp_racket='racket -i -p neil/sicp -l xrepl'

alias dockup="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"
alias tmux="tmux -2"
alias git_remove_merged="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
alias inote="~/anaconda2/bin/python ~/anaconda2/bin/jupyter-notebook"

export PATH="$HOME/.yarn/bin:$PATH"

# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
#bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

