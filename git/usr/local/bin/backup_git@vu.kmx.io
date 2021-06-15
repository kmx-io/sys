#!/bin/sh
if [[ $(whoami) = git ]]; then
    exec nice rsync -aHP 'git-backup@vu.kmx.io:/home/git/*' /home/git/
else
    exec su -s /bin/ksh - git -c "$0"
fi
