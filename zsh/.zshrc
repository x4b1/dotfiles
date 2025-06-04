# zplug
# --------------------------------------
export ZPLUG_HOME="$(brew --prefix)/opt/zplug"

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/git", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install zplug plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Configuration
# --------------------------------------
source $HOME/.zsh/config/options.zsh
source $HOME/.zsh/config/completions.zsh
source $HOME/.zsh/config/variables.zsh
source $HOME/.zsh/config/aliases.zsh
source $HOME/.zsh/config/bindings.zsh
source $HOME/.zsh/config/syntax-highlighting.zsh
source $HOME/.zsh/config/suggestions.zsh
source $HOME/.zsh/config/hooks.zsh

# Explicit machine configuration
# --------------------------------------
source $HOME/.envrc

# zsh modules autoloading
# --------------------------------------
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -a zsh/mapfile mapfile

eval "$(fnm env)"

# Starship
eval "$(starship init zsh)"

# Output cool information
# --------------------------------------
fastfetch -c ~/.config/fastfetch/config.jsonc
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/xabi/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
