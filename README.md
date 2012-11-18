# dotfiles

My configuration files.

Most of the files in this repository should be prefixed with a ".",
but that makes them a pain to work on.

## Installation

The easiest way to keep everything in sync is with symbolic links.

```sh
git clone git@github.com:tfausak/dotfiles.git
cd dotfiles
dir=$( pwd -P )
cd ~
dotfiles=$( bash_profile gitconfig vimrc )
for dotfile in ${dotiles[@]}
do
    ln -s "$dir/$dotfile" ".$dotfile"
done
ln -fs "$dir/Preferences.sublime-settings" \
    "Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"
cd -
```

Vim requires some special directories for scratch files.

```sh
mkdir ~/.vim ~/.vim/backup ~/.vim/tmp ~/.vim/undo
```
