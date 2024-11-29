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
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"
