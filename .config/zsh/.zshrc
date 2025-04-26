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

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#2d3f76 \
  --color=bg:#1e2030 \
  --color=border:#589ed7 \
  --color=fg:#c8d3f5 \
  --color=gutter:#1e2030 \
  --color=header:#ff966c \
  --color=hl+:#65bcff \
  --color=hl:#65bcff \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#65bcff \
  --color=query:#c8d3f5:regular \
  --color=scrollbar:#589ed7 \
  --color=separator:#ff966c \
  --color=spinner:#ff007c \
"

# Load secrets from local file
if [[ -f "$HOME/.env.secret" ]]; then
  source "$HOME/.env.secret"
fi
