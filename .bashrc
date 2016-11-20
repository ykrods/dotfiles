# conf
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="fg:bg:jobs"
export EDITOR="emacs"

# path
export PATH=$HOME/dotfiles/bin:$PATH
export PATH=$HOME/homebrew/bin:$PATH

# alias
alias dl='docker ps -l -q'
alias ddang='docker images -f "dangling=true" -q'

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
