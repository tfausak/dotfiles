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

# Prompt
export PS1="${COLOR_RED}\u${COLOR_WHITE}@${COLOR_GREEN}\h${COLOR_WHITE}:${COLOR_BLUE}\W${COLOR_WHITE}\$${COLOR_RESET} "

# Aliases
alias ls='ls -G'
alias lss='ls -AGhltr'
alias be='bundle exec'
alias :tabe='echo -ne "\007"; echo "Not in Vim!"; sleep 1; vi'
alias grep='grep --color=auto --no-messages'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=1024
export HISTSIZE=1024

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/bin:/usr/local/mysql/bin:$PATH:/usr/local/sbin"

unset COLOR_BLACK COLOR_RED COLOR_GREEN COLOR_YELLOW COLOR_BLUE COLOR_PURPLE COLOR_CYAN COLOR_WHITE COLOR_RESET
