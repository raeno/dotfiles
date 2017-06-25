export EDITOR=atom
#---- Disable mailcheck
unset MAILCHECK

#---- Common commands

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias ll='ls -lv --group-directories-first --color'

alias h='history'
alias j='jobs -l'
alias myip='echo "Public IP: " && curl ifconfig.me'

alias grep='grep --color=auto'
alias bc='bc -l'

alias ports='netstat -tulanp'
alias wget='wget -C'

#--- Rails&Ruby related
alias r_migrate='bundle exec rake db:migrate'
alias r_c='bundle exec rails console'
alias guard='bundle exec guard'

#---- Git

alias gc='git commit -m'
alias gbl='git branch --list'
alias ga='git add'
alias gst='git status'
alias gls='git ls'

#---- utimer
alias stopwatch='utimer -s'
alias timer='utimer -t'
alias countdown='utimer -c'

# use Vim as man page reader
export MANPAGER="col -b | view -c 'set ft=man nomod nolist' -"

function knife_upload() {
  knife cookbook upload --all
  knife role from file roles/*.rb
  knife data bag from file --all
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
