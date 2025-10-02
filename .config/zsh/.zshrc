ZSH_THEME=""
plugins=(git z tmux)
source "$ZSH/oh-my-zsh.sh"

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

command -v starship >/dev/null && eval "$(starship init zsh)"
