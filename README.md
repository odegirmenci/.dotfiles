## Neovim
ln -s ~/dotfiles/nvim ~/.config/nvim

## ~/.config/alacritty/alacritty.toml  
[general]
import = [ "~/.dotfiles/alacritty/general.toml" ]

## ~/.tmux.conf
source-file ~/.dotfiles/tmux/config.conf

## ~/.zshrc
source ~/.dotfiles/zsh/config.zsh
