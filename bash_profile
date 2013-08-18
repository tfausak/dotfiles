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
export PATH="$HOME/bin:$PATH"

# nvm
test -s "$HOME/.nvm/nvm.sh" && source "$HOME/.nvm/nvm.sh"

# Go
export GOPATH="$HOME/bin/go"

# For rbenv through Homebrew.
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
