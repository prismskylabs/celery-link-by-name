#!/usr/bin/env bash

PACKAGES="
    python2.7-dev
    python-setuptools
    libpq-dev
    python-dev
    git
    python-software-properties
    curl
    virtualenvwrapper
    libevent-dev
    libmemcache-dev
    libmemcached-dev
    build-essential
    redis-server
    libffi-dev
"

sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo apt-get install -y ${PACKAGES}
sudo apt-get autoremove -y

/vagrant/scripts/build-venv.sh
