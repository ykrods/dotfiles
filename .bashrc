# conf
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="fg:bg:jobs"
export EDITOR="emacs"

# path
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$HOME/homebrew/bin:$PATH
export PATH=$HOME/.venv/bin:$PATH
export TEXT_DIR=~/storage/text

# alias
alias dl='docker ps -l -q'
alias docker-dangling-images='docker images -f "dangling=true" -q'
alias docker-dangling-volumes='docker volume ls -f "dangling=true" -q'

# per os
case $(uname) in
"Darwin")
    # ls color
    export CLICOLOR=1
    export LSCOLORS=DxGxcxdxCxegedabagacad
    ;;
"Linux")
    ;;
* )
    ;;
esac
