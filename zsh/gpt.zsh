
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

# Completion
fpath=(/usr/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{green}-- %d --%f'

# Keybindings
bindkey -e

# Aliases
[[ -f "$HOME/.zsh/aliases.zsh" ]] && source "$HOME/.zsh/aliases.zsh"

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#65756B'

# Starship
eval "$(starship init zsh)"

# Syntax highlighting MUST be loaded last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ------------------------------------------
# AUTOMATIC TMUX
# ------------------------------------------

if [[ -o interactive ]] && [[ -z "$TMUX" ]] && [[ -z "$ZSH_NO_TMUX" ]]; then
    exec tmux new-session -A -s main
fi

