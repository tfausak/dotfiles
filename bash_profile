export PS1="\
\[\e[0;34m\]\W\
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

# Path
export PATH="/usr/local/sbin:$PATH" # nginx
export PATH="/usr/local/bin:$PATH" # Homebrew
export PATH="$HOME/.cabal/bin:$PATH" # Cabal (Haskell)

# nvm
test -s "$HOME/.nvm/nvm.sh" && source "$HOME/.nvm/nvm.sh"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.0.0-p247
