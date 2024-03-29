#
# Add aliases for docker
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# check if docker is installed
(( ! ${+commands[docker]} )) && return 1

alias dk='docker'
alias dkbl='docker build'
alias dkcin='docker container inspect'
alias dkcls='docker container ls'
alias dkclsa='docker container ls -a'
alias dkib='docker image build'
alias dkii='docker image inspect'
alias dkils='docker image ls'
alias dkipu='docker image push'
alias dkirm='docker image rm'
alias dkit='docker image tag'
alias dklo='docker container logs'
alias dknc='docker network create'
alias dkncn='docker network connect'
alias dkndcn='docker network disconnect'
alias dkni='docker network inspect'
alias dknls='docker network ls'
alias dknrm='docker network rm'
alias dkpo='docker container port'
alias dkps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.State}}\t{{.RunningFor}}\t{{.Ports}}\t{{.Command}}"'
alias dkpsa='docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.State}}\t{{.RunningFor}}\t{{.Ports}}\t{{.Command}}"'
alias dkpu='docker pull'
alias dkr='docker container run'
alias dkrit='docker container run -i -t'
alias dkrm='docker container rm'
alias 'dkrm!'='docker container rm -f'
alias dkrs='docker container restart'
alias dkst='docker container start'
alias dksta='docker stop $(docker ps -q)'
alias dkstp='docker container stop'
alias dktop='docker top'
alias dkv='docker volume'
alias dkvi='docker volume inspect'
alias dkvls='docker volume ls'
alias dkvprune='docker volume prune'
alias dkxc='docker container exec'
alias dkxcit='docker container exec -i -t'
