Trade Tariff Docker
===================

This is an internal project we use to speed up all the things http://memegenerator.net/instance/61385457

# Prerequisites

We use [docker](https://www.docker.com/) and [fig](http://www.fig.sh/) to build and link docker containers.
Ensure that you have both installed before continue.

# Installation

1. Clone this repo
2. Execute `./install.sh`
3. Profit!

# How to use it

To start all the containers execute `./start.sh`
To stop all the containers execute `./stop.sh`
To restart all the containers execute (yes, you get it...)
If for any reason you need to clean all the containers, type `./clean-containers.sh`

# Notes

The installation process will clone the trade-tariff repositories.
It will automatically add two remotes for each repository:
- origin: Bit Zesty!
- alphagov: alphagov, the client, be careful!

**Note:** It's important you start all containers together because they need to share environment variables at startup. Without them, you'll start to see `No route to host tariff-api.dev.gov.uk`



Sorry for the long post here's a potato:
```
░░░░░░░░░░░░░░░░▄▀▀▀▀▀▀▀▀░▄▄░░░░░░░░░░░
░░░░░░░░░░░▄▀██▀░░░░░░░░░░░▀▀▄░░░░░░░░░
░░░░░░░░░░▀▄░░▀▀▄▄░░░░░░░░░░░█▄▄░░░░░░░
░░░░░░░░░░░░█▄▄░░░▀▀▀▄▄▄▄▄▄▄▄▀▀░█░░░░░░
░░░░░░░▄▀▀▀▄█▄░▀▀▀▄▄▄▄░░░░░░░░▄▄▀░░░░░░
░░░░░▄▀░░▄█▀████▄▄░▄██████▀▀▀▀█░▄░░░░░░
░░░░░▀░▄▀█░░░████▀░▀▀▀▀▀▀▀░░░░█░░▀▀▄░░░
░░░░█░░▀▄▀░▄▀░░▀▄░░▄▄▄▄░░░░░░░█░▀░░▀▄░░
░░░░▀▄░▄▀░█▀░▄▄░█░█░░░░█░░░░░░█░░█░░█░░
░░░░░▀█▀░░█░░▀▀░██▀░██░█░░░░░░░▄░█░░▀░░
░░▄▄▄▄█░░░▀▄░░▄█▄█░░░░░█░░░░░░░█▀░░█░░░
▄▀▄▄▄▄▀░░░░░▀█▀░░▀█▄▄▄▀░░░░░░░░█▄▀▀░░░░
▀░░▀▄█░░░░░▄▄▀░░░░█░░░░░░░░░░░▄▀▀▄░░░░░
░▀▄░▀█░▄▄░▄▀░░░░░░░▀░░░░░░░░░░█░░░▀▄░░░
░░░█░██▀▀▀██░░░░░░░▄▀░░░░░░░░░▀▄▄▄░░▀▄░
░▄█░▄█▀█▀▀░▄▀█▄▄▀█▀█▀▄░░░░░░░░▄▀▀▀▀▀░░█
█▄▄▀███▄▀▄█░░█░░█░█░▀▄█░░░░░░░█░▄██▀▀▀▀
░░▀████▀▄░▀▀▀█▄▄█▄▄█▄▀░░░░░░░▄▀█████░░░
▄█▀▀░▄░▀▄▀█▄░████████░░░░░░░▄▀██▄█▄▀░░░
```