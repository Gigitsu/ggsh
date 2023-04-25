#
# Add aliases for docker
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# check if docker compose is installed
(( ! (${+commands[docker]} + ${+commands[docker-compose]}) )) && return 1

# support Compose v2 as docker CLI plugin
(( ${+commands[docker-compose]} )) && dccmd='docker-compose' || dccmd='docker compose'

alias dco="$dccmd"
alias dcob="$dccmd build"
alias dcoe="$dccmd exec"
alias dcops="$dccmd ps"
alias dcorestart="$dccmd restart"
alias dcorm="$dccmd rm"
alias dcor="$dccmd run"
alias dcostop="$dccmd stop"
alias dcoup="$dccmd up"
alias dcoupb="$dccmd up --build"
alias dcoupd="$dccmd up -d"
alias dcoupdb="$dccmd up -d --build"
alias dcodn="$dccmd down"
alias dcol="$dccmd logs"
alias dcolf="$dccmd logs -f"
alias dcopull="$dccmd pull"
alias dcostart="$dccmd start"
alias dcok="$dccmd kill"

unset dccmd
