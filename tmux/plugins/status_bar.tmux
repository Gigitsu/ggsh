#!/usr/bin/env bash

tmux_get() {
    local value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

uptime_sh="$1/helpers/uptime.sh"

#############################
###        Colours        ###
#############################

BASE03='colour8' 
BASE02='colour0'
BASE01='colour10' 
BASE00='colour11' 
BASE0='colour12' 
BASE1='colour14' 
BASE2='colour7' 
BASE3='colour15' 
YELLOW='colour3' 
ORANGE='colour9' 
RED='colour1' 
MAGENTA='colour5' 
VIOLET='colour13' 
BLUE='colour4' 
CYAN='colour6' 
GREEN='colour2' 
DEFAULT='default'

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
tmux set -g status-style "fg=$BASE0,bg=$BASE02,none"

tmux setw -g window-status-separator ""

tmux setw -g window-status-style "fg=$BASE0,bg=$DEFAULT,none"
tmux setw -g window-status-last-style "fg=$BLUE,bg=$DEFAULT,bold"

tmux setw -g window-status-format "#[fg=$BASE02,bg=$DEFAULT,none]$right_upper_triangle #[fg=$DEFAULT,bg=$BASE02,none]#I:#W#[fg=$BASE02,bg=$DEFAULT,none]$left_lower_triangle"
tmux setw -g window-status-current-format "#[fg=$BLUE,bg=$DEFAULT,none]$right_upper_triangle #[fg=$BASE02,bg=$BLUE,bold]#I:#W#[fg=$BLUE,bg=$DEFAULT,none]$left_lower_triangle"

tmux set -g status-left-length 1000
tmux set -g status-left "#[fg=$BASE3,bg=$ORANGE,bold] $user_icon #(whoami)#[fg=$ORANGE,bg=$BASE00,bold]$left_lower_triangle #[fg=$BASE2,bg=$BASE00,none] ❐ #S #[fg=$BASE00,bg=$BASE02,none]$left_lower_triangle "

tmux set -g status-right-length 1000
tmux set -g status-right "#[fg=$BASE00,bg=$BASE01,none]#{?client_prefix,$prefix_icon, } #{?session_many_attached,$pairing_mode_on_icon,} #{?pane_synchronized,$synchronized_mode_on_icon,} #{?mouse,,$mouse_mode_off_icon}  #[fg=$BASE00,bg=$BASE02,none]$right_lower_triangle #[fg=$BASE2,bg=$BASE00,none] ↑ #(cat $uptime_sh | sh -s) #[fg=$BASE1,bg=$BASE00,none]$right_lower_triangle #[fg=$BASE3,bg=$BASE1,bold] #h "

tmux setw -g pane-border-style "fg=$BASE02,bg=$BASE03" 
tmux set -g pane-active-border-style "fg=$ORANGE,bg=$BASE03"

tmux set -g display-panes-colour $BASE00
tmux set -g display-panes-active-colour $ORANGE

tmux set -g message-style "fg=$BASE0,bg=$BASE02,none"
tmux set -g message-command-style "fg=$BASE0,bg=$BASE02,none"

tmux setw -g mode-style "fg=$BASE2,bg=$ORANGE,bold"
