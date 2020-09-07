#!/bin/sh

DOMAINS="$(cat ~/domains)"

exec certbot --config-dir ~/config --logs-dir ~/log --work-dir ~/work certonly --webroot -d "$DOMAINS"
