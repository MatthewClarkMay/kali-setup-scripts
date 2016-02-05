#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install kali-linux-all

echo "-------------------------------------------------------------------"
echo "----- update, upgrade, and dist-upgrade complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install openjdk-7-jre oracle-java8-installer htop hexedit exiftool exif qbittorrent chromium-browser gufw speedcrunch -y

echo "-------------------------------------------------------------------"
echo "---------- Lots of cool software installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo mv /etc/vim/vimrc /etc/vim/vimrc-backup
sudo mv vimrc /etc/vim/

echo "-------------------------------------------------------------------"
echo "------------- Vundle and vimrc configured, Next Phase -------------"
echo "-------------------------------------------------------------------"

mkdir ~/.vim/colors
wget https://raw.githubusercontent.com/DrSpatula/vim-buddy/master/colors/buddy.vim
mv buddy.vim ~/.vim/colors

echo "-------------------------------------------------------------------"
echo "------------ vim color scheme configured, Next Phase --------------"
echo "-------------------------------------------------------------------"

sudo mv ~/.bashrc ~/.bashrc-copy
sudo mv .bashrc ~
sudo mv .bash_aliases ~

echo "-------------------------------------------------------------------"
echo "------------ .bashrc copied and replaced, Next Phase --------------"
echo "-------------------------------------------------------------------"

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
