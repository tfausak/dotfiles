# Prompt
function _branch {
    git symbolic-ref --quiet --short HEAD 2>/dev/null
}
function _git {
    test "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = 'true'
}
function _prompt {
    local reset='\[\e[0m\]'
    local black='\[\e[0;30m\]'
    local yellow='\[\e[0;33m\]'
    local blue='\[\e[0;34m\]'
    local purple='\[\e[0;35m\]'
    local cyan='\[\e[0;36m\]'

    echo "\
${yellow}\u\
${black}@\
${cyan}\h\
${black}:\
${blue}\W\
${black}\$(_git && echo +)\
${purple}\$(_branch)\
${black}\$\
${reset} "
}
export PS1=$(_prompt)

# Colorize `ls`.
export CLICOLOR=1

# Colorize `grep`.
export GREP_OPTIONS='--color=auto'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=65536
export HISTSIZE=65536

# rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Path
export PATH="/usr/local/sbin:$PATH"       # nginx
export PATH="/usr/local/heroku/bin:$PATH" # Heroku
export PATH="/usr/local/bin:$PATH"        # Homebrew
export PATH="$HOME/bin:$PATH"

# nvm
[[ -s /Users/t/.nvm/nvm.sh ]] && . /Users/t/.nvm/nvm.sh

# Go
export GOPATH="$HOME/bin/go"

# For rbenv through Homebrew.
export RBENV_ROOT=/usr/local/var/rbenv
