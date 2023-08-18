alias sudo='sudo '

alias c='clear'
alias h='history'

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

# Github
alias ghw="gh browse"

# Kubernetes
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"
