GET_IP_COMMAND := hostname -I | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'
IP_ADDRESS := $(shell $(GET_IP_COMMAND))

download:
	ruby download.rb urls.csv | sh

ip-address:
	@export IP_ADDRESS

caddy: ip-address
	@echo "ip $(IP_ADDRESS)"
	caddy run


