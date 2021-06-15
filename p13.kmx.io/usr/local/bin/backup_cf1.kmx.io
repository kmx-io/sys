#!/bin/sh
set -e

DIR=/usb/backup/cf1.kmx.io

SLOT=$(/usr/local/bin/hanoi 4 $(/usr/local/bin/day))
DIR_SLOT=${DIR}/${SLOT}

run() {
    echo "$@"
    "$@"
}

sync() {
        mkdir -p "${DIR_SLOT}$1"
        run rsync -aHPx --delete-before "$1/." "${DIR_SLOT}$1/"
}

echo "$(date "+%F %T") $DIR_SLOT" >> "$DIR/backup.log"

sync /
sync /home
sync /usr
sync /usr/X11R6
sync /usr/local
sync /usr/src
sync /var
