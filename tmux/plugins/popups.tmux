#!/usr/bin/env bash

open_session="$1/helpers/open_session.sh"
project_formatter="$1/helpers/project_formatter.awk"

projects_src="~/Developer/src"
projects_src_realpath="$(realpath ~/Developer/src)/"

tmux bind -n M-o display-popup -E "\
    find $projects_src -type d -exec [ -e '{}/.git' ] ';' -prune -print |\
    awk -v prefix='$projects_src_realpath' -f $project_formatter |\
    fzf --reverse --header='Select project from $projects_src >' --with-nth 2 --keep-right |\
    awk '{print \$1}' |\
    xargs $open_session"

tmux bind -n M-j display-popup -E "\
    tmux list-sessions -F '#{?session_attached,,#{session_name}}' |\
    sed '/^$/d' |\
    fzf --reverse --header='Jump to session >' --preview 'tmux capture-pane -pt {}'  |\
    xargs tmux switch-client -t"


tmux bind -n M-k display-popup -E "\
    tmux list-sessions -F '#{?session_attached,,#{session_name}}' |\
    sed '/^$/d' |\
    fzf --reverse -m --header='Kill session > --preview 'tmux capture-pane -pt {}' |\
    xargs -I {} tmux kill-session -t {}"
