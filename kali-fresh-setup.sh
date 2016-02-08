#!/bin/bash

sudo cp /etc/apt/sources.list /etc/apt/sources-list.bak
sudo cp sources.list /etc/apt/

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

echo "-------------------------------------------------------------------"
echo "----- update, upgrade, and dist-upgrade complete, Next Phase ------"
echo "-------------------------------------------------------------------"

sudo apt-get install htop hexedit exiftool exif qbittorrent chromium-browser gufw speedcrunch -y

echo "-------------------------------------------------------------------"
echo "---------- Lots of cool software installed, Next Phase ------------"
echo "-------------------------------------------------------------------"

cd /opt/

if [[ $(getconf LONG_BIT) = "64" ]]
then
    echo "64bit Detected" &&
    echo "Installing Java" &&
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u72-b15/jdk-8u72-linux-x64.tar.gz"
else
    echo "32bit Detected" &&
    echo "Installing Java" &&
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u72-b15/jdk-8u72-linux-i586.tar.gz"
fi

tar -xzvf jdk*.gz
rm jdk*.gz
cd jdk*

JVERSION='jdk1.8.0_72'

update-alternatives --install /usr/bin/java java /opt/$JVERSION/bin/java 1
update-alternatives --install /usr/bin/javac javac /opt/$JVERSION/bin/javac 1
update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so mozilla-javaplugin.so /opt/$JVERSION/jre/lib/amd64/libnpjp2.so 1
update-alternatives --set java /opt/$JVERSION/bin/java
update-alternatives --set javac /opt/$JVERSION/bin/javac
update-alternatives --set mozilla-javaplugin.so /opt/$JVERSION/jre/lib/amd64/libnpjp2.so

echo "-------------------------------------------------------------------"
echo "------------------- Java Installed, Next Phase --------------------"
echo "-------------------------------------------------------------------"

sudo service postgresql start
msfdb init

echo "-------------------------------------------------------------------"
echo "--------------- Metasploit configured, Next Phase -----------------"
echo "-------------------------------------------------------------------"

cd ~/kali-setup-scripts        
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo mv /etc/vim/vimrc /etc/vim/vimrc-backup
sudo cp vimrc /etc/vim/

echo "-------------------------------------------------------------------"
echo "------------- Vundle and vimrc configured, Next Phase -------------"
echo "-------------------------------------------------------------------"

mkdir ~.vim/colors
wget https://raw.githubusercontent.com/DrSpatula/vim-buddy/master/colors/buddy.vim
mv buddy.vim ~/.vim/colors

echo "-------------------------------------------------------------------"
echo "------------ vim color scheme configured, Next Phase --------------"
echo "-------------------------------------------------------------------"

sudo mv ~/.bashrc ~/.bashrc-copy
sudo cp .bashrc ~
sudo cp .bash_aliases ~

echo "-------------------------------------------------------------------"
echo "------------ .bashrc copied and replaced, Next Phase --------------"
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
