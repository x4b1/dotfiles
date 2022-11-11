# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

alias ls='lsd -lt --group-directories-first --header'
alias ll='ls -la'
alias l='ls -l'
alias tree='lsd --tree'
alias rm='rm -i'
alias p='ps -ef | rg -i '
alias cat='bat'

# Utils
alias k='kill -9'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'

alias cmf='git-cmf'


# Kubernetes
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"

# Teleport
alias stdb='tsh proxy db --port 5432 --tunnel staging'
alias rrdb='tsh proxy db --port 5433 --tunnel production-read-replica'
alias pddb='tsh proxy db --port 2345 --tunnel production'
