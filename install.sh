dir=$( pwd -P )
cd ~
dotfiles=( aprc bash_profile gitconfig gitignore irbrc vimrc )
for dotfile in ${dotfiles[@]}
do
    ln -fsv "$dir/$dotfile" ".$dotfile"
done

# Sublime Text 2
ln -fsv "$dir/Preferences.sublime-settings" \
    "Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"

# iTerm2
ln -fsv "$dir/com.googlecode.iterm2.plist" \
  "Library/Preferences/com.googlecode.iterm2.plist"
cd -

mkdir -pv ~/.vim/{backup,tmp,undo}
