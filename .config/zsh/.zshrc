#!/bin/zsh

# Create cache directory if it doesn't exist.
[ -d $XDG_CACHE_HOME/zsh ] || mkdir -p $XDG_CACHE_HOME/zsh

# Set up history.
HISTFILE="${XDG_CACHE_HOME}/zsh/.zsh_history"

# Set up completion.

# Enable and set cache location.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# Make Homebrew's completions available.
if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit -d "${XDG_CACHE_HOME}/zsh/.zcompdump-$ZSH_VERSION"
fi

# Load aliases if present.
[ -f "${XDG_CONFIG_HOME}/zsh/.aliasrc" ] && source "${XDG_CONFIG_HOME}/zsh/.aliasrc"

# Activate mise
eval "$(/opt/homebrew/bin/mise activate zsh)"

# Load starship.
eval "$(starship init zsh)"

# Load zoxide.
eval "$(zoxide init zsh)"

# Load Fzf
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

# Load secrets from local file
if [[ -f "$HOME/.env.secret" ]]; then
  source "$HOME/.env.secret"
fi
