#!/bin/bash
systemctl stop stratux
rm -f /usr/bin/dump1090
ln -sv /opt/stratux/stratux_src/dump1090/dump1090
systemctl start stratux
systemctl stop nginx
systemctl disable nginx
