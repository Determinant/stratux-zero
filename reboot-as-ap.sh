#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
	exit 1
fi

workdir="$(dirname $(realpath ${BASH_SOURCE[0]}))"

#rm -f /etc/network/if-up.d/wpasupplicant
#rm -f /etc/network/if-pre-up.d/wpasupplicant
#rm -f /etc/network/if-down.d/wpasupplicant
#rm -f /etc/network/if-post-down.d/wpasupplicant
systemctl disable dhcpcd
systemctl unmask hostapd
systemctl enable hostapd
systemctl enable dnsmasq
cp "$workdir/wlan0" /etc/network/interfaces.d/
reboot
