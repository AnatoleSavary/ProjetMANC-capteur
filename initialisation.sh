#!/bin/bash

echo "dtparam=spi=on" | sudo tee -a /boot/config.txt
echo "dtparam=i2c_vc=on" | sudo tee -a /boot/config.txt
echo -e "network={\nssid=\"NewMancivent\"\npsk=\"LaRed2019Manc\"\nkey_mgmt=WPA-PSK\n}" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf
sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -D wext
sudo dhclient wlan0

