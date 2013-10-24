dir=$( pwd -P )
cd ~
dotfiles=( bash_profile gemrc ghci gitconfig gitignore vimrc )
for dotfile in ${dotfiles[@]}
do
    ln -fsv "$dir/$dotfile" ".$dotfile"
done

# Sublime Text 3
ln -fsv "$dir/Preferences.sublime-settings" \
    "Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

mkdir -pv ~/.vim/{backup,tmp,undo}
