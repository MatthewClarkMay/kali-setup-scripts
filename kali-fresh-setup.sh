#!/bin/bash

sudo cp /etc/apt/sources.list /etc/apt/sources-list.bak
sudo cp sources.list /etc/apt/

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

echo "-------------------------------------------------------------------"
echo "----- update, upgrade, and dist-upgrade complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install htop hexedit exiftool exif qbittorrent chromium-browser gufw speedcrunch openvpn -y

echo "-------------------------------------------------------------------"
echo "---------- Lots of cool software installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

source bash-vim-setup.sh
source java-installer.sh

sudo service postgresql start
msfdb init

echo "-------------------------------------------------------------------"
echo "--------------- Metasploit configured, Next Phase -----------------"
echo "-------------------------------------------------------------------"


#echo "-------------------------------------------------------------------"
#echo "----------- Custom keyboard shortcuts set, Next Phase -------------"
#echo "-------------------------------------------------------------------"

sudo dpkg-reconfigure tzdata

echo "-------------------------------------------------------------------"
echo "--------------- Time Zone reconfigured, Next Phase ----------------"
echo "-------------------------------------------------------------------"

echo "Cleaning Up" &&
    sudo apt-get -f install &&
    sudo apt-get autoremove &&
    sudo apt-get -y autoclean &&
    sudo apt-get -y clean

echo "-------------------------------------------------------------------"
echo "-------------------- System Clean, Rebooting ----------------------"
echo "-------------------------------------------------------------------"

sudo reboot
