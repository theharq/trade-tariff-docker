#!/bin/bash
export RAILS_ENV=docker
cd src
bundle exec rake db:create db:migrate db:seed
bundle exec rake docker:tariff_applications
bundle exec rake users:create name="docker" email="docker@bitzesty.com" applications="trade-tariff-admin,trade-tariff-backend"
