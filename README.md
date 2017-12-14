# PostgreSQL Toolbox

[![Build Status](https://travis-ci.org/panubo/docker-postgres-toolbox.svg?branch=master)](https://travis-ci.org/panubo/docker-postgres-toolbox)

A collection of PostgreSQL tools for automating common tasks in a Docker-centric way.

## Documentation

Documentation for each subcommand:

- [Create User](commands/create-user.md)
- [Vacuum](commands/vacuum.md)
- [psql](commands/psql.md)

## Usage

Using Docker links to `postgres` container:

```docker run --rm -i -t --link myserver:postgres docker.io/panubo/postgres-toolbox```

This will display the usage information.

```docker run --rm -i -t --link myserver:postgres docker.io/panubo/postgres-toolbox <subcommand>```

To run the subcommand.

## Configuration

Use `--link <postgres container name>:postgres` to automatically specify the required variables.

Or alternatively specify the variables:

- `DATABASE_HOST` = IP / hostname of PostgreSQL server.
- `DATABASE_PORT` = TCP Port of PostgreSQL service.
- `DATABASE_USER` = Administrative user eg postgres with SUPERUSER privileges.
- `DATABASE_PASS` = Password of administrative user.

Some subcommands require additional environment parameters.

## Status

Incomplete. Work in progress.