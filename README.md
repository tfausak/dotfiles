# dotfiles

My configuration files.

``` sh
mkdir -p ~/.vim/{backup,tmp,undo} ~/.config/fish/functions

git clone https://github.com/tfausak/dotfiles.git
cd dotfiles

cp config.fish ~/.config/fish
cp fish_greeting.fish ~/.config/fish/functions
cp fish_prompt.fish ~/.config/fish/functions
cp fish_right_prompt.fish ~/.config/fish/functions
cp gitconfig ~/.gitconfig
cp vimrc ~/.vimrc

# Copy `Preferences.sublime-settings` to wherever it belongs.
```
