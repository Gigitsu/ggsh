#
# Initialize and configures fasd
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# check if fasd is installed
(( ! ${+commands[fasd]} )) && return 1

#--- Cache

local _fasd_cache_path="${CACHE_HOME:-$HOME/.cache/ggsh}/fasd-init-cache.zsh"

if [[ "$commands[fasd]" -nt "$_fasd_cache_path" || ! -s "$_fasd_cache_path" ]]; then
  mkdir -p "$_fasd_cache_path:h"
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install >| "$_fasd_cache_path"
fi

source "$_fasd_cache_path"

#--- Aliases

if (( $+commands[fzf] )); then
  jj() {
    local _jump_dir
    _jump_dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${_jump_dir}" || return 1
  }
else
  alias jj='zz'
fi

alias v='f -e "$EDITOR"'
alias o='a -e xdg-open'
alias j='z'