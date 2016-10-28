#!/bin/bash

cd /opt/

if [[ $(getconf LONG_BIT) = "64" ]]
then
    echo "64bit Detected" &&
    echo "Installing Java" &&
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-linux-x64.tar.gz"
else
    echo "32bit Detected" &&
    echo "Installing Java" &&
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-linux-i586.tar.gz"
fi

tar -xzvf jdk*.gz
rm jdk*.gz
cd jdk*

JVERSION='jdk1.8.0_112'

update-alternatives --install /usr/bin/java java /opt/$JVERSION/bin/java 1
update-alternatives --install /usr/bin/javac javac /opt/$JVERSION/bin/javac 1
update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so mozilla-javaplugin.so /opt/$JVERSION/jre/lib/amd64/libnpjp2.so 1
update-alternatives --set java /opt/$JVERSION/bin/java
update-alternatives --set javac /opt/$JVERSION/bin/javac
update-alternatives --set mozilla-javaplugin.so /opt/$JVERSION/jre/lib/amd64/libnpjp2.so

echo "-------------------------------------------------------------------"
echo "------------------- Java Installed, Next Phase --------------------"
echo "-------------------------------------------------------------------"
