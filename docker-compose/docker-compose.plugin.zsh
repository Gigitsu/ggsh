#
# Add aliases for docker
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# check if docker compose is installed
(( ! (${+commands[docker]} + ${+commands[docker-compose]}) )) && return 1

# support Compose v2 as docker CLI plugin
dccmd='docker compose'

alias dco="$dccmd"
alias dcb="$dccmd build"
alias dce="$dccmd exec"
alias dcps="$dccmd ps"
alias dcrestart="$dccmd restart"
alias dcrm="$dccmd rm"
alias dcr="$dccmd run"
alias dcstop="$dccmd stop"
alias dcup="$dccmd up"
alias dcupb="$dccmd up --build"
alias dcupd="$dccmd up -d"
alias dcupdb="$dccmd up -d --build"
alias dcdn="$dccmd down"
alias dcl="$dccmd logs"
alias dclf="$dccmd logs -f"
alias dcpull="$dccmd pull"
alias dcstart="$dccmd start"
alias dck="$dccmd kill"

unset dccmd
