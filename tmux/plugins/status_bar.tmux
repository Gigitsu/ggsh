#!/usr/bin/env bash

tmux_get() {
    local value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

uptime_sh="$1/helpers/uptime.sh"

#############################
###        Options        ###
#############################

left_upper_triangle=''             # U+E0BC
left_lower_triangle=''             # U+E0B8
left_lower_separator=''            # U+E0B9

right_upper_triangle=''            # U+E0BE
right_lower_triangle=''            # U+E0BA
right_lower_separator=''           # U+E0BB

user_icon=''                       # U+F007

mouse_mode_off_icon=''             # U+F87D
mouse_mode_on_icon=''              # U+F87C
pairing_mode_on_icon='⚇'            # U+2687
prefix_icon='⌨'                     # U+2328
synchronized_mode_on_icon='⚏'       # U+268F

#############################
###         Theme         ###
#############################

tmux set -g status-justify centre
tmux set -g status-style "fg=colour12,bg=colour8,none"

tmux setw -g window-status-separator ""

tmux setw -g window-status-style "fg=colour12,bg=default,none"
tmux setw -g window-status-last-style "fg=colour4,bg=default,bold"

tmux setw -g window-status-format "#[fg=colour0,bg=default,none]$right_upper_triangle #[fg=default,bg=colour0,none]#I:#W#[fg=colour0,bg=default,none]$left_lower_triangle"
tmux setw -g window-status-current-format "#[fg=colour4,bg=default,none]$right_upper_triangle #[fg=colour0,bg=colour4,bold]#I:#W#[fg=colour4,bg=default,none]$left_lower_triangle"


tmux set -g status-left-length 1000
tmux set -g status-left "#[fg=colour7,bg=colour9,bold] $user_icon #(whoami)#[fg=colour9,bg=colour0,bold]$left_lower_triangle #[fg=default,bg=colour0,none] ❐ #S #[fg=colour0,bg=colour8,none]$left_lower_triangle "

tmux set -g status-right-length 1000
tmux set -g status-right "#{?client_prefix,$prefix_icon, } #{?session_many_attached,$pairing_mode_on_icon,} #{?pane_synchronized,$synchronized_mode_on_icon,} #{?mouse,$mouse_mode_on_icon, }  #[fg=colour0,bg=colour8,none]$right_lower_triangle #[fg=default,bg=colour0,none] ↑ #(cat $uptime_sh | sh -s) $right_lower_separator  #h "

tmux setw -g pane-border-style "fg=colour0,bg=colour8" 
tmux set -g pane-active-border-style "fg=colour9,bg=colour8"

tmux set -g display-panes-colour "colour11"
tmux set -g display-panes-active-colour "colour9"

tmux set -g message-style "fg=colour12,bg=colour0,none"
tmux set -g message-command-style "fg=colour12,bg=colour0,none"

tmux setw -g mode-style "fg=colour7,bg=colour9,bold"
