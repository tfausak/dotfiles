# dotfiles

My configuration files.

Most of the files in this repository should be prefixed with a ".",
but that makes them a pain to work on.

## Installation

The easiest way to keep everything in sync is with symbolic links.

```sh
git clone git@github.com:tfausak/dotfiles.git
cd dotfiles
dotfiles=$( bash_profile gitconfig pylintrc vimrc )
for dotfile in ${dotiles[@]}
do
    ln -s $dotfile ~/.$dotfile
done
```

Vim requires some special directories for scratch files.

```sh
mkdir ~/.vim ~/.vim/backup ~/.vim/tmp ~/.vim/undo
```
