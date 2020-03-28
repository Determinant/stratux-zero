#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
	exit 1
fi

systemctl disable hostapd
systemctl disable dnsmasq
systemctl enable dhcpcd
rm -f /etc/network/interfaces.d/wlan0
reboot
