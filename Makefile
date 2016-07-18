.PHONY: test start stop reload install
CURRENT_DIR = ${PWD}
CONFIG_FILE = conf/nginx.conf
NGINX = nginx
NGINX_CMD = $(NGINX) -p $(CURRENT_DIR) -c $(CONFIG_FILE)

test:
	sudo $(NGINX_CMD) -t

start:
	sudo $(NGINX_CMD)

stop:
	sudo $(NGINX_CMD) -s stop

reload:
	sudo $(NGINX_CMD) -s reload

install:
	rsync -a --delete html.init/ html/
	mkdir -p logs
