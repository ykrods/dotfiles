
# history
export HISTSIZE=1000
export SAVEHIST=100000

setopt hist_ignore_dups

# env

export TEXT_DIR=~/storage/text

# alias
alias docker-latest-container='docker ps -l -q'
alias docker-all-containers='docker ps -q -a'
alias docker-dangling-images='docker images -f "dangling=true" -q'
alias docker-dangling-volumes='docker volume ls -f "dangling=true" -q'


if [[ -f /etc/manjaro-release ]]; then
    typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
        dir                     # current directory
    )
    typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
fi
