# DC Traefik

A lightweight docker compose Traefik configuration repository

## Usage

### BYODF

If you want to build your own local compose file, the docker-compose.yml is the base file and you can extend this via the COMPOSE_FILE variable in the `.env` file.

See the `sample.env` file for settings and the files in `docker/compose` for more information.

### A la carte

If you want to pick and chose standard configuration slices, simply copy the `bootstrap.sample.conf` to `bootstrap.conf`, (un)comment what's needed or not and run `bootstrap.sh` to generate a `docker-compose.local.yml` file and copy `sample.env` to `.env` and edit the `.env` file for any last/remaining settings.

### Custom files

Use the files provider config to load custom config files from the confs directory.

## Requirements

- Docker
- Docker Compose plugin
- YQ
