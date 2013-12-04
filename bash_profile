export PS1="\
\[\e[0;37m\]\W\
\[\e[0;3\$(if test \$? = 0; then echo 2; else echo 1; fi)m\]\$\
\[\e[0m\] "

# Colorize `ls`.
export CLICOLOR=1

# Colorize `grep`.
export GREP_OPTIONS='--color=auto'

# History
export HISTCONTROL=erasedups:ignoredups
export HISTFILESIZE=65536
export HISTSIZE=65536
