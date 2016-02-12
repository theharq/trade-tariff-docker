Trade Tariff Docker
===================

# Prerequisites

We use [Docker](https://www.docker.com/) and [Docker Compoese](https://docs.docker.com/compose/) to build and link docker containers.
Ensure that you have both installed before continue.

If you are using Docker Machine please add the host to the `/etc/hosts file`

`vim /etc/hosts`

    ##
    # Host Database
    #
    # localhost is used to configure the loopback interface
    # when the system is booting.  Do not change this entry.
    ##
    127.0.0.1       localhost
    192.168.XX.XX   dockerhost

# Installation

1. Clone this repo
2. Execute `./install.sh` to donwload the repositories
3. Execute `docker-compose build` to create the docker containers
4. Profit!

# How to use it

- To start all the containers execute `docker-compose up`

# Notes

The installation process will clone the trade-tariff repositories.
It will automatically add two remotes for each repository:
- origin: Bit Zesty!
- alphagov: alphagov, the client, be careful!

**Note:** It's important you start all containers together because they need to share environment variables at startup. Without them, you'll start to see `No route to host tariff-api.dev.gov.uk`
