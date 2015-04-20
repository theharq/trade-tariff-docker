#!/bin/bash
cd src

export RAILS_ENV=docker
export GDS_SSO_STRATEGY=real

bundle install
bundle exec whenever --update-crontab
bundle exec unicorn -p 3018
