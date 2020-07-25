# Setting up vim-plug for installing plugins

Set up a plugins directory for neovim and then clone init.vim in the directory
```
mkdir ~/.config/nvim/
cd ~/.config/nvim
wget github.com/Noodulz/dotfiles/blob/master/nvim/init.vim
```
Make sure node-js is installed as a dependency first before curling the plug.vim file below
```
# For Arch
pacman -S node-js
mkdir ~/.config/nvim/autoload
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Run `nvim +PlugInstall` and test out changes on a file with `nvim`
