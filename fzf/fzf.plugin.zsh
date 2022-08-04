# Check fzf exists
(( ! $+commands[fzf] )) && return 1

if (( ${+commands[brew]} )); then
  _fzf_shell_path="$(brew --prefix fzf)/shell"

  source "${_fzf_shell_path}/key-bindings.zsh"
  [[ $- == *i* ]] && source "${_fzf_shell_path}/completion.zsh" 2> /dev/null

  unset _fzf_path
fi