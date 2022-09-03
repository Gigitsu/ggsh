# Check fzf exists
(( ! $+commands[fzf] )) && return 1

if (( ${+commands[brew]} )); then
  local _fzf_shell_path="$(brew --prefix fzf)/shell"

  source "${_fzf_shell_path}/key-bindings.zsh"
  [[ $- == *i* ]] && source "${_fzf_shell_path}/completion.zsh" 2> /dev/null

  unset _fzf_path
fi

if (( $+commands[rg] )); then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}"'
  export FZF_CTRL_T_COMMAND='rg --files --hidden --follow -g "!{node_modules,.git}"'
fi

export FZF_DEFAULT_OPTS='--height 96% --reverse'
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS --preview \"cat {}\""