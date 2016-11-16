#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. ~/.virtualenvs/demo/bin/activate

python ${DIR}/../src/demo/chain.py
