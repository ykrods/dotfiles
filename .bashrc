# conf
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="fg:bg:jobs"
export EDITOR="emacs"

# path
export PATH=$HOME/dotfiles/bin:$PATH

export TEXT_DIR=~/storage/text

# alias
alias docker-latest-container='docker ps -l -q'
alias docker-all-containers='docker ps -q -a'
alias docker-dangling-images='docker images -f "dangling=true" -q'
alias docker-dangling-volumes='docker volume ls -f "dangling=true" -q'

# per os
case $(uname) in
"Darwin")
    # ls color
    export CLICOLOR=1
    export LSCOLORS=DxGxcxdxCxegedabagacad
    export BASH_SILENCE_DEPRECATION_WARNING=1
    export PATH=$HOME/homebrew/bin:$PATH
    export PATH=$HOME/homebrew/opt/openssl/bin:$PATH
    ;;
"Linux")
    ;;
* )
    ;;
esac
