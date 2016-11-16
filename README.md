# celery link by name

Minimal example for how to chain celery callbacks by name, without ever importing them into your app.

## Environment

This sets up a VM with two separate Python virtualenvs, one which has numpy and one which doesn't. Numpy was chosen
as an arbitray large package that you might not want on all your application servers.

A script running in the "demo" environment triggers tasks in the "cel" environment.

The directory structure (config in `demo` and tasks in `test`) was meant to be a rough approximation of a typical 
setup with Django and Celery (where demo is a django project and test is a "reusable" django app).

## Usage

    vagrant up
    vagrant ssh
    /vagrant/scripts/build-venv.sh
    screen
    
Screen 0:

    /vagrant/scripts/run-worker.sh
   
Screen 1:

    /vagrant/scripts/run-test.sh

