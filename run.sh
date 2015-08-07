#!/usr/bin/env bash

# setup the submodules
git submodule init
git submodule update

# ezsylius setup
( cd workshops/ezpublish-community-sylius &&
  git checkout sylius_integration &&
  git pull origin sylius_integration &&
  sudo ln -sf /var/www/summercamp/workshops/ezpublish-community-sylius/installation/vhost /etc/apache2/sites-enabled/ezsylius.conf &&
  sudo sh ./installation/run.sh
)

sudo service apache2 reload