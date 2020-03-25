#!/bin/bash
workdir="$(dirname $(realpath ${BASH_SOURCE[0]}))"

#rm -f /etc/network/if-up.d/wpasupplicant
#rm -f /etc/network/if-pre-up.d/wpasupplicant
#rm -f /etc/network/if-down.d/wpasupplicant
#rm -f /etc/network/if-post-down.d/wpasupplicant
systemctl disable dhcpcd
systemctl enable hostapd
systemctl enable dnsmasq
cp "$workdir/wlan0" /etc/network/interfaces.d/
reboot
