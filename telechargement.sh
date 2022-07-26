#!/bin/bash

sudo apt-get install qt4-dev-tools
cd ~
git clone https://github.com/paulantier/Projet_PING
cd ./raspberrypi_TEMPSREEL
qmake && make
sudo sh -c "echo performance > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor"
chmod +x ./video
chmod +x ./raspberrypi_video
cd ..
chmod +x ./raspberrypi_dynamique
sudo apt-get install python3
sudo apt install python3-pip
sudo pip3 install opencv-python
sudo apt-get install libatlas-base-dev
sudo pip3 install –upgrade numpy 
sudo pip3 install mediapipe-rpi4
sudo apt install python3-gi-cairo
sudo pip3 install scipy
sudo pip3 install scikit-image
sudo pip3 install drawnow
sudo apt-get install lighttpd
echo "dtparam=i2c_vc=on" | sudo tee -a /etc/lighttpd 
sudo sed -i 's/\(server.document-root=\).*/\1/home/pi/Projet_PING/raspberrypi_TEMPSREEL/' /etc/lighttpd/lighttpd.conf
cd ~/Projet_PING/raspberrypi_TEMPSREEL
chmod +x video
chmod +x raspberrypi_video
cd ..
chmod +x utilisation.sh
sudo mv utilisation.sh /etc/init.d
sudo mv utilisation.service /lib/systemd/system/utilisation.service
sudo systemctl enable utilisation.service


 
