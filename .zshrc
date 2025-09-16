# env
export EDITOR=nano
export PATH=$HOME/.npm-global/bin:$PATH
# Enable comment
setopt interactivecomments

# Disable extended glob (^)
unsetopt extendedglob

# history
HISTSIZE=3000
SAVEHIST=10000
HISTRY_IGNORE="(fg|bg|jobs)"
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# env
export TEXT_DIR=~/storage/text

# alias
alias docker-latest-container='docker ps -l -q'
alias docker-all-containers='docker ps -q -a'
alias docker-dangling-images='docker images -f "dangling=true" -q'
alias docker-dangling-volumes='docker volume ls -f "dangling=true" -q'

# keybinding
bindkey '^H' backward-delete-char


if [[ ${OSTYPE} == "darwin"* ]]; then
    # ls color
    export CLICOLOR=1
    export LSCOLORS=DxGxcxdxCxegedabagacad
fi

if [[ -f /etc/manjaro-release ]]; then
    typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
        dir                     # current directory
    )
    typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
fi
