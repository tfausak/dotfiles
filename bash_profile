# Colors
COLOR_BLACK='\[\e[0;30m\]'
COLOR_RED='\[\e[0;31m\]'
COLOR_GREEN='\[\e[0;32m\]'
COLOR_YELLOW='\[\e[0;33m\]'
COLOR_BLUE='\[\e[0;34m\]'
COLOR_PURPLE='\[\e[0;35m\]'
COLOR_CYAN='\[\e[0;36m\]'
COLOR_WHITE='\[\e[0;37m\]'
COLOR_RESET='\[\e[0m\]'

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

# Git
function _git_branch () {
    git branch 2>/dev/null | grep '^[*] ' | sed 's/^[*] //'
}
function _git_separator () {
    if [ "$(_git_branch)" ]
    then
        echo '+'
    fi
}

# Prompt
export PS1="\
${COLOR_RED}\u\
${COLOR_BLACK}@\
${COLOR_GREEN}\h\
${COLOR_BLACK}:\
${COLOR_BLUE}\W\
${COLOR_BLACK}\$(_git_separator)\
${COLOR_YELLOW}\$(_git_branch)\
${COLOR_BLACK}\$\
${COLOR_RESET} "

# Aliases
alias lss='ls -AGhltr'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=65536
export HISTSIZE=65536

# Path
export PATH="$HOME/bin:$PATH:/usr/local/sbin"

unset COLOR_BLACK COLOR_RED COLOR_GREEN COLOR_YELLOW COLOR_BLUE COLOR_PURPLE \
      COLOR_CYAN COLOR_WHITE COLOR_RESET
