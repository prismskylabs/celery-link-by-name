#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. /etc/bash_completion.d/virtualenvwrapper

# the worker runs in this virtualenv, with numpy
mkvirtualenv cel
pip install --upgrade pip
pip install -r ${DIR}/../src/requirements.txt
pip install numpy
add2virtualenv ${DIR}/../src/
deactivate

# the tasks will be sent from this virtualenv, without numpy
mkvirtualenv demo
pip install --upgrade pip
pip install -r ${DIR}/../src/requirements.txt
add2virtualenv ${DIR}/../src/
deactivate
