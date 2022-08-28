#!/usr/bin/env bash

#################################
###          Helpers          ###
#################################

open_session="$1/helpers/open_session.sh"
project_formatter="$1/helpers/project_formatter.awk"

#################################
###          Options          ###
#################################

projects_src="$(realpath ~/Developer/src)"


#################################
###          Functions        ###
#################################

list_detached_sessions_fn='tmux list-sessions -F "#{?session_attached,,#{session_name}}" | sed "/^$/d"'
list_git_folders_fn="find $projects_src -type d -exec [ -e '{}/.git' ] ';' -prune -print | awk -v prefix='$projects_src' -f $project_formatter"


#################################
###          Bindings         ###
#################################

tmux bind -N "Open a git repository under $project_src" -n M-r  display-popup -E "$list_git_folders_fn |\
    fzf --reverse --header='Open project >' --with-nth 2 --keep-right | awk '{print \$1}' |\
    xargs $open_session"

tmux bind -N "Jump to the selected session" -n M-g display-popup -E "$list_detached_sessions_fn |\
    fzf --bind 'ctrl-x:reload(tmux kill-session -t {} && $list_detached_sessions_fn)' --reverse --header='Jump to session (ctrl-x to kill) >' |\
    xargs tmux switch-client -t"
