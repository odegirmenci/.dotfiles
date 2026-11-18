# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Listing
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'

# Utilities
alias c='clear'
alias grep='grep --color=auto'
alias ports='ss -tulnp'
alias myip='ip -br address'

## System
#alias update='sudo pacman -Syu'
#alias cleanup='sudo pacman -Sc'

## Config
#alias zconf='nvim ~/.zshrc'
#alias tconf='nvim ~/.config/tmux/tmux.conf'
#alias aconf='nvim ~/.config/alacritty/alacritty.toml'
#alias sconf='nvim ~/.config/starship.toml'
alias reload='source ~/.zshrc'

## Tmux
#alias ta='tmux attach -t main'
#alias tl='tmux list-sessions'
#

alias gl='git log --oneline --graph --decorate'
