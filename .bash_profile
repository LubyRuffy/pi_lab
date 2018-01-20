alias ll='ls -FGlAhp'
alias f='open -a Finder ./'
alias path='echo -e ${PATH//:/\\n}'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias flushDNS='dscacheutil -flushcache'

alias gs='git status'
alias gc='git commit -am'
alias ga='git add .'

alias reload='source ~/.bash_profile'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$CYAN"▫️️  \w"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$GREEN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" "$LIGHT_GRAY"$ "
