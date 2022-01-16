#!/bin/sh
if [[ $(whoami) = git ]]; then
    exec nice rsync -aHP 'git-backup@otter.kmx.io:/home/git/*' /home/git/
else
    exec su -s /bin/ksh - git -c "$0"
fi
