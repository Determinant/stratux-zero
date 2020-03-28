#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
	exit 1
fi

workdir="$(dirname $(realpath ${BASH_SOURCE[0]}))"

systemctl stop stratux
rm -f /usr/bin/dump1090
ln -sv "$workdir/dump1090-fa.sh" /usr/bin/dump1090
systemctl start stratux
systemctl start nginx
systemctl enable nginx
