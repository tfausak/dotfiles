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
dotfiles=( aprc bash_profile gitconfig gitignore irbrc vimrc )
for dotfile in ${dotfiles[@]}
do
    ln -fsv "$dir/$dotfile" ".$dotfile"
done
ln -fsv "$dir/Preferences.sublime-settings" \
    "Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"
ln -fsv "$dir/com.googlecode.iterm2.plist" \
  "Library/Preferences/com.googlecode.iterm2.plist"
cd -
```

Vim requires some special directories for scratch files.

```sh
mkdir -pv ~/.vim/{backup,tmp,undo}
```
