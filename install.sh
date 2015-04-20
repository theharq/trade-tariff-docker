#!/bin/bash

if [ ! -d "trade-tariff-backend/src/.git" ]; then
  mkdir -p trade-tariff-backend/src
  git clone https://github.com/bitzesty/trade-tariff-backend trade-tariff-backend/src
  cd trade-tariff-backend/src
  git remote add alphagov https://github.com/alphagov/trade-tariff-backend
  git fetch
  cd ../..
fi

if [ ! -d "trade-tariff-frontend/src/.git" ]; then
  mkdir -p trade-tariff-frontend/src
  git clone https://github.com/bitzesty/trade-tariff-frontend trade-tariff-frontend/src
  cd trade-tariff-frontend/src
  git remote add alphagov https://github.com/alphagov/trade-tariff-frontend
  git fetch
  cd ../..
fi

if [ ! -d "trade-tariff-admin/src/.git" ]; then
  mkdir -p trade-tariff-admin/src
  git clone https://github.com/bitzesty/trade-tariff-admin trade-tariff-admin/src
  cd trade-tariff-admin/src
  git remote add alphagov https://github.com/alphagov/trade-tariff-admin
  git fetch
  cd ../..
fi

if [ ! -d "signonotron2/src/.git" ]; then
  mkdir -p signonotron2/src
  git clone https://github.com/bitzesty/signonotron2 signonotron2/src
  cd signonotron2/src
  git remote add alphagov https://github.com/alphagov/signonotron2
  git fetch
  git checkout ruby-22-update #remove it when alphagov merges this branch
  cd ../..
fi

fig run signonotron2 /bin/bash install.sh
fig run backend /bin/bash install.sh
fig run admin /bin/bash install.sh