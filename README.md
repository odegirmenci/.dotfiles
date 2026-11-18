# `Prerequisite`
    sudo pacman -S --needed \
        neovim \
        alacritty \
        tmux \
        zsh \
        starship \
        ttf-jetbrains-mono-nerd \
        zsh-autosuggestions \
        zsh-syntax-highlighting \
        zsh-completions \
        git \
        curl \
        unzip \
        fzf \
        ripgrep \
        fd

#### Neovim
    ln -s ~/.dotfiles/nvim ~/.config/nvim

#### ~/.config/alacritty/alacritty.toml  
    [general]
    import = [ "~/.dotfiles/alacritty/general.toml" ]

#### ~/.tmux.conf
    source-file ~/.dotfiles/tmux/config.conf

#### ~/.zshrc
    source ~/.dotfiles/zsh/config.zsh
