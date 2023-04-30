#!/usr/bin/env bash

session_exists() {
  tmux has-session -t "=$1"
  echo $?
}

open_session() {
  local session_path=$1
  local session_name="$(basename "$session_path" | tr . -)"
  local initialized=$(session_exists $session_name)

  (TMUX='' tmux new-session -Ad -s "$session_name" -c $session_path)

  if [[ $initialized != 0 && -f "${session_path}/.session_init.sh" ]]; then
    (SESSION_NAME=$session_name source "${session_path}/.session_init.sh" $session_name)
  fi

  if [[ -z "$TMUX" ]]; then
    tmux attach-session -t "$session_name"
  else
    tmux switch-client -t "$session_name"
  fi
}

open_session "$@"

