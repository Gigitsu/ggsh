# Docker plugin

This plugin aliases for [docker](https://www.docker.com/).

## Aliases

| Alias    | Command                       | Description                                                                              |
| -------- | ----------------------------- | ---------------------------------------------------------------------------------------- |
| dk       | `docker`                      | The docker command                                                                       |
| dkbl     | `docker build`                | Build an image from a Dockerfile                                                         |
| dkcin    | `docker container inspect`    | Display detailed information on one or more containers                                   |
| dkcls    | `docker container ls`         | List all the running docker containers                                                   |
| dkclsa   | `docker container ls -a`      | List all running and stopped containers                                                  |
| dkib     | `docker image build`          | Build an image from a Dockerfile (same as docker build)                                  |
| dkii     | `docker image inspect`        | Display detailed information on one or more images                                       |
| dkils    | `docker image ls`             | List docker images                                                                       |
| dkipu    | `docker image push`           | Push an image or repository to a remote registry                                         |
| dkirm    | `docker image rm`             | Remove one or more images                                                                |
| dkit     | `docker image tag`            | Add a name and tag to a particular image                                                 |
| dklo     | `docker container logs`       | Fetch the logs of a docker container                                                     |
| dknc     | `docker network create`       | Create a new network                                                                     |
| dkncn    | `docker network connect`      | Connect a container to a network                                                         |
| dkndcn   | `docker network disconnect`   | Disconnect a container from a network                                                    |
| dkni     | `docker network inspect`      | Return information about one or more networks                                            |
| dknls    | `docker network ls`           | List all networks the engine daemon knows about, including those spanning multiple hosts |
| dknrm    | `docker network rm`           | Remove one or more networks                                                              |
| dkpo     | `docker container port`       | List port mappings or a specific mapping for the container                               |
| dkpu     | `docker pull`                 | Pull an image or a repository from a registry                                            |
| dkr      | `docker container run`        | Create a new container and start it using the specified command                          |
| dkrit    | `docker container run -it`    | Create a new container and start it in an interactive shell                              |
| dkrm     | `docker container rm`         | Remove the specified container(s)                                                        |
| dkrm!    | `docker container rm -f`      | Force the removal of a running container (uses SIGKILL)                                  |
| dkst     | `docker container start`      | Start one or more stopped containers                                                     |
| dkrs     | `docker container restart`    | Restart one or more containers                                                           |
| dksta    | `docker stop $(docker ps -q)` | Stop all running containers                                                              |
| dkstp    | `docker container stop`       | Stop one or more running containers                                                      |
| dktop    | `docker top`                  | Display the running processes of a container                                             |
| dkvi     | `docker volume inspect`       | Display detailed information about one or more volumes                                   |
| dkvls    | `docker volume ls`            | List all the volumes known to docker                                                     |
| dkvprune | `docker volume prune`         | Cleanup dangling volumes                                                                 |
| dkxc     | `docker container exec`       | Run a new command in a running container                                                 |
| dkxcit   | `docker container exec -it`   | Run a new command in a running container in an interactive shell                         |
