Build your own stratux from scratch
-----------------------------------

1. Make sure you have the shell access to your Raspberry Pi.
2. Run the following commands:

::

   # login the `pi` user
   cd ~/
   git clone https://github.com/Determinant/stratux-zero.git
   stratux-zero/setup.sh

3. Pi will reboot after finishing the whole process, now you can access your
   stratux AP named "stratux-zero", and the password is "stratux-zero".

4. (optional) If you would like to switch to STA mode ("client" mode rather
   than AP mode), make sure you have the right config in
   ``/etc/wpa_supplicant/wpa_supplicant.conf``, and then run
   ``sudo stratux-zero/reboot-as-sta.sh``.
5. (optional) If you would like to see the FlightAware map UI for dump1090, run
   ``stratux-zero/enable-fa-web.sh``, then it will be available at
   ``192.168.10.1:8080``.

Features
--------

- Uses up-to-date flightaware dump1090 implementation (instead of the very old one shipped with stratux).
- Uses the latest wiringPi.
- Uses dnsmasq instead of isc-dhcp-server.
- Works on my Raspberry Pi Zero W. (Tested compilation on Pi 3 Model B)
