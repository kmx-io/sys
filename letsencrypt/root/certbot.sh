#!/bin/sh
set -e
chmod 700 /home/letsencrypt
chown -R letsencrypt:letsencrypt /home/letsencrypt
su - letsencrypt -c "sh certbot.sh $@"
chown -R root:wheel /home/letsencrypt
ls -la /home/letsencrypt/config/live
