#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
	exit 1
fi

systemctl stop stratux
rm -f /usr/bin/dump1090
ln -sv /opt/stratux/stratux_src/dump1090/dump1090
systemctl start stratux
systemctl stop nginx
systemctl disable nginx
