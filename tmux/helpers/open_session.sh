#!/usr/bin/env bash

session_exists() {
  tmux has-session -t "=$1"
}

open_session() {
  local session_path=$1
  local session_name="$(basename "$session_path" | tr . -)"

  if [ -z "$TMUX" ]; then
    tmux new-session -As "$session_name"
  else
    if ! session_exists "$session_name"; then
      (TMUX='' tmux new-session -Ad -s "$session_name" -c $session_path)
    fi
    tmux switch-client -t "$session_name"
  fi
}

open_session "$@"