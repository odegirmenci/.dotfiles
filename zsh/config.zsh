source ~/.dotfiles/zsh/aliases.zsh


# ------------------------------------------
# OBISIDIAN / MOSS
# ZSH CONFIGURATION
# ------------------------------------------

# History
HISTFILE="$HOME/.local/state/zsh/history"
HISTSIZE=20000
SAVEHIST=10000

setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP


autoload -Uz compinit
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
#
# ---------- PROMPT ----------
autoload -Uz colors && colors
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f %(?.%F{green}❯.%F{red}❯)%f '


# Completion
fpath=(/usr/share/zsh/site-functions $fpath)


zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{green}-- %d --%f'


# ---------- KEYBINDINGS ----------
bindkey -e
bindkey '^R' fzf-history-widget

eval "$(starship init zsh)"

[ -f /usr/share/fzf/shell/key-bindings.zsh ] && source /usr/share/fzf/shell/key-bindings.zsh
[ -f /usr/share/fzf/shell/completion.zsh ] && source /usr/share/fzf/shell/completion.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#565f89'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export STARSHIP_CONFIG=~/.dotfiles/zsh/starship/config.toml
# ---------- TMUX AUTO ----------
if command -v tmux >/dev/null 2>&1 \
   && [ -z "$TMUX" ] \
   && [[ $- == *i* ]] \
   && [ -z "$SSH_CONNECTION" ]; then
  exec tmux new-session -A -s main
fi


export BUN_INSTALL="$HOME/.bun"
export PATH="/home/osman/.bun/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"


# opencode
export PATH=/home/osman/.opencode/bin:$PATH

# Rust
# >>> Codex installer >>>
export PATH="/home/osman/.local/bin:$PATH"
# <<< Codex installer <<<

# Vite+ bin (https://viteplus.dev)
. "/home/osman/.config/vite-plus/env"


# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/home/osman/.lmstudio/bin"
