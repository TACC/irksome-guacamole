What's this?
============

Experimenting with a generic container for Flask + nginx + uwsgi.

The goal is to have a container in which to drop (mount) a Flask app and have
it automatically running in a robust way under `nginx` and `uwsgi`.

Quickstart
----------

Build with `docker build -t guac .`

Run with `docker run -it -p 8888:80 guac`

Contributors
============

The TACC ACI group.
