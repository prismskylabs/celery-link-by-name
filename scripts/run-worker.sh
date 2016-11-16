#!/usr/bin/env bash

. ~/.virtualenvs/cel/bin/activate

celery worker -C -A demo

