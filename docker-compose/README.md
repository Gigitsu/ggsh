# Docker-compose

This plugin provides aliases for [docker-compose](https://docs.docker.com/compose/) for frequent docker-compose commands.

## Aliases

| Alias     | Command                        | Description                                                                      |
| --------- | ------------------------------ | -------------------------------------------------------------------------------- |
| dco       | `docker-compose`               | Docker-compose main command                                                      |
| dcb       | `docker-compose build`         | Build containers                                                                 |
| dce       | `docker-compose exec`          | Execute command inside a container                                               |
| dcps      | `docker-compose ps`            | List containers                                                                  |
| dcrestart | `docker-compose restart`       | Restart container                                                                |
| dcrm      | `docker-compose rm`            | Remove container                                                                 |
| dcr       | `docker-compose run`           | Run a command in container                                                       |
| dcstop    | `docker-compose stop`          | Stop a container                                                                 |
| dcup      | `docker-compose up`            | Build, (re)create, start, and attach to containers for a service                 |
| dcupb     | `docker-compose up --build`    | Same as `dcup`, but build images before starting containers                      |
| dcupd     | `docker-compose up -d`         | Same as `dcup`, but starts as daemon                                             |
| dcupdb    | `docker-compose up -d --build` | Same as `dcup`, but build images before starting containers and starts as daemon |
| dcdn      | `docker-compose down`          | Stop and remove containers                                                       |
| dcl       | `docker-compose logs`          | Show logs of container                                                           |
| dclf      | `docker-compose logs -f`       | Show logs and follow output                                                      |
| dcpull    | `docker-compose pull`          | Pull image of a service                                                          |
| dcstart   | `docker-compose start`         | Start a container                                                                |
| dck       | `docker-compose kill`          | Kills containers                                                                 |
