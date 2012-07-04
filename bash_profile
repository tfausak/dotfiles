# Prompt
black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
white='\[\e[0;37m\]'
reset='\[\e[0m\]'
export PS1="${red}\u${white}@${green}\h${white}:${blue}\W${white}\$${reset} "
unset black red green yellow blue purple cyan white reset

# Aliases
alias ls='ls -G'
alias lss='ls -AGhltr'

# History
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=1024
export HISTSIZE=1024
