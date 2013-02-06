# Colorize `ls`.
export CLICOLOR=1

# Colorize `grep`.
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
COLOR_BLACK='\[\e[0;30m\]'
COLOR_RED='\[\e[0;31m\]'
COLOR_GREEN='\[\e[0;32m\]'
COLOR_YELLOW='\[\e[0;33m\]'
COLOR_BLUE='\[\e[0;34m\]'
COLOR_PURPLE='\[\e[0;35m\]'
COLOR_CYAN='\[\e[0;36m\]'
COLOR_WHITE='\[\e[0;37m\]'
COLOR_RESET='\[\e[0m\]'

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

unset COLOR_BLACK COLOR_RED COLOR_GREEN COLOR_YELLOW COLOR_BLUE COLOR_PURPLE \
      COLOR_CYAN COLOR_WHITE COLOR_RESET

# Aliases
alias lss='ls -AGhltr'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=65536
export HISTSIZE=65536

# Path
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"  # Homebrew
export PATH="/usr/local/sbin:$PATH" # nginx

# rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm
[[ -s /Users/t/.nvm/nvm.sh ]] && . /Users/t/.nvm/nvm.sh

# REE
export RUBY_GC_MALLOC_LIMIT=50000000
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_HEAP_SLOTS_INCREMENT=250000
