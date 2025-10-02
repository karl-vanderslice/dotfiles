[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/environment" ] && . "${XDG_CONFIG_HOME:-$HOME/.config}/environment"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/ohmyzsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HOMEBREW_NO_ENV_HINTS=1
command -v brew >/dev/null 2>&1 && eval "$("$(command -v brew)" shellenv)"

typeset -U path
path=(
  $HOME/.nix-profile/bin
  /nix/var/nix/profiles/default/bin
  /run/current-system/sw/bin
  /opt/homebrew/bin /opt/homebrew/sbin
  /usr/local/bin /usr/local/sbin
  $HOME/.local/bin
  $path
  /usr/bin /bin /usr/sbin /sbin
)
hash -r

