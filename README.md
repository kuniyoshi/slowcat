SLOWCAT
=======

DESCRIPTION
-----------

This project is a nginx setup to configure HTTP bandwidth limitation.

The heart of this project is a nginx configuration: `limit_rate`,
and other thins are default setup of nginx.

USAGE
-----

```bash
# setup
make setup

# start nginx server
make start

# stop nginx server
make stop

# test it
curl http://localhost:80/
```

