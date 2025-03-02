#
# Set fzf common configuration
#
# Authors:
#   Gigitsu <luigi.clemente@gsquare.it>

# Check if fzf exists
(( ! $+commands[fzf] )) && return 1

local _fzf_solarized_dark_theme='--color=fg:#839496,bg:#002b36,hl:#2aa198,fg+:#eee8d5,bg+:#073642,hl+:#268bd2,info:#b58900,prompt:#859900,pointer:#cb4b16,marker:#859900,spinner:#b58900,header:#859900'

if (( ${+commands[brew]} )); then
  local _fzf_shell_path="$(brew --prefix fzf)/shell"

  source "${_fzf_shell_path}/key-bindings.zsh"
  [[ -o interactive ]] && source "${_fzf_shell_path}/completion.zsh" 2> /dev/null
fi

if (( $+commands[rg] )); then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}"'
  export FZF_CTRL_T_COMMAND='rg --files --hidden --follow -g "!{node_modules,.git}"'
fi

export FZF_DEFAULT_OPTS="--height 96% --reverse --bind ctrl-space:preview-down --preview-window bottom,border-horizontal $_fzf_solarized_dark_theme"

if (( $+commands[bat] )); then
  export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS --preview \"bat --color=always --line-range=:500 {}\""
else
  export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS --preview \"cat {}\""
fi
