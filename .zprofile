#!/bin/zsh

# Setup Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Default programs
export EDITOR='nvim'
export VISUAL='nvim'

# Clean up ~/
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export DOCKER_DEFAULT_PLATFORM=linux/amd64
# export DOCKER_HOST="unix://${COLIMA_HOME}/default/docker.sock"
export DOCKER_HOST="unix://$XDG_CONFIG_HOME/colima/default/docker.sock"
