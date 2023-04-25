# Docker-compose

This plugin provides aliases for frequent docker-compose commands.

## Aliases

| Alias      | Command                        | Description                                                                      |
| ---------- | ------------------------------ | -------------------------------------------------------------------------------- |
| dco        | `docker-compose`               | Docker-compose main command                                                      |
| dcob       | `docker-compose build`         | Build containers                                                                 |
| dcoe       | `docker-compose exec`          | Execute command inside a container                                               |
| dcops      | `docker-compose ps`            | List containers                                                                  |
| dcorestart | `docker-compose restart`       | Restart container                                                                |
| dcorm      | `docker-compose rm`            | Remove container                                                                 |
| dcor       | `docker-compose run`           | Run a command in container                                                       |
| dcostop    | `docker-compose stop`          | Stop a container                                                                 |
| dcoup      | `docker-compose up`            | Build, (re)create, start, and attach to containers for a service                 |
| dcoupb     | `docker-compose up --build`    | Same as `dcup`, but build images before starting containers                      |
| dcoupd     | `docker-compose up -d`         | Same as `dcup`, but starts as daemon                                             |
| dcoupdb    | `docker-compose up -d --build` | Same as `dcup`, but build images before starting containers and starts as daemon |
| dcodn      | `docker-compose down`          | Stop and remove containers                                                       |
| dcol       | `docker-compose logs`          | Show logs of container                                                           |
| dcolf      | `docker-compose logs -f`       | Show logs and follow output                                                      |
| dcopull    | `docker-compose pull`          | Pull image of a service                                                          |
| dcostart   | `docker-compose start`         | Start a container                                                                |
| dcok       | `docker-compose kill`          | Kills containers                                                                 |
