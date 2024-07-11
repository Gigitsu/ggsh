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
fzf_solarized_dark_theme=' --color=fg:#839496,bg:#002b36,hl:#2aa198,fg+:#eee8d5,bg+:#073642,hl+:#268bd2,info:#b58900,prompt:#859900,pointer:#cb4b16,marker:#859900,spinner:#b58900,header:#859900'


#################################
###          Functions        ###
#################################

list_detached_sessions_fn='tmux list-sessions -F "#{?session_attached,,#{session_name}}" | sed "/^$/d"'
list_git_folders_fn="find $projects_src -type d -exec [ -e '{}/.git' ] ';' -prune -print | awk -v prefix='$projects_src' -f $project_formatter"
project_preview_cmd=$( command -v glow &> /dev/null && echo "glow -s dark" || echo "cat")

#################################
###          Bindings         ###
#################################

#--- Sessions
tmux bind -n M-s display-popup -h 95% -w 95% -E "tmux new-session -A -s scratch"

#--- Git
tmux bind -n M-g display-popup -h 95% -w 95% -d '#{pane_current_path}' -E 'lazygit'

#--- Navigation
tmux bind -N "Open a git repository under $project_src" -n C-o  display-popup -h 90% -w 90% -E "$list_git_folders_fn |\
    fzf --reverse $fzf_solarized_dark_theme --header='Open project >' --with-nth 2.. --keep-right --bind ctrl-space:preview-down --preview-window bottom,border-horizontal --preview '[[ -f {1}/README.md ]] && $project_preview_cmd {1}/README.md || echo \"No readme found\"' | awk '{print \$1}' |\
    xargs $open_session"

tmux bind -N "Jump to the selected session" -n C-g display-popup -E "$list_detached_sessions_fn |\
    fzf --bind 'ctrl-x:reload(tmux kill-session -t {} && $list_detached_sessions_fn)' --reverse $fzf_solarized_dark_theme --header='Jump to session (ctrl-x to kill) >' |\
    xargs tmux switch-client -t"
