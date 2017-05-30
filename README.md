# Bitcoin for Docker

[![Build Status](https://travis-ci.org/acejam/docker-bitcoin.svg?branch=master)](https://travis-ci.org/acejam/docker-bitcoin)
[![Docker Stars](https://img.shields.io/docker/stars/acejam/bitcoin.svg?maxAge=2592000)](https://hub.docker.com/r/acejam/bitcoin)
[![Docker Pulls](https://img.shields.io/docker/pulls/acejam/bitcoin.svg?maxAge=2592000)](https://hub.docker.com/r/acejam/bitcoin)

A customizable Docker container for Bitcoin

## Quick Start

    docker run -d --name bitcoin --restart=always -v /data/bitcoin:/data/bitcoin acejam/bitcoin:latest

## Config options

This container includes support for Bitcoin configuration values. These values can be set when calling `docker run` through the use of environment variables.

The following values are configurable:
* `RPC_USER`
* `RPC_PASS`
* `RPC_ALLOW_IP`
* `MAX_CONNECTIONS`
* `RPC_PORT`
* `PORT`

For example, to run the container with the username "DevUser" and a password of "P@ssw0rd123" with 10 max connections, you can run the following:

      docker run -d -e RPC_USER="DevUser" -e RPC_PASS="P@ssw0rd123" -e MAX_CONNECTIONS=10 acejam/bitcoin:latest

## Data persistence

Coming soon!
