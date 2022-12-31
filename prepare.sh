#!/bin/sh
wget -O /etc/apk/keys/amazoncorretto.rsa.pub  https://apk.corretto.aws/amazoncorretto.rsa.pub
echo "https://apk.corretto.aws/" >> /etc/apk/repositories
apk update
apk upgrade
apk add amazon-corretto-17 amazon-corretto-11 amazon-corretto-8
mkdir /opt/server
rm -f /opt/prepare.sh
