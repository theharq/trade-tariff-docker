#!/bin/bash
cd src

export RAILS_ENV=docker
bundle install
bundle exec unicorn -p 3017
