#!/bin/bash
export RAILS_ENV=docker
cd src
bundle exec rake db:create db:migrate db:seed