#!/bin/bash
workdir="$(dirname $(realpath ${BASH_SOURCE[0]}))"

systemctl stop stratux
rm -f /usr/bin/dump1090
ln -sv "$workdir/dump1090-fa.sh" /usr/bin/dump1090
systemctl start stratux
systemctl start nginx
systemctl enable nginx
