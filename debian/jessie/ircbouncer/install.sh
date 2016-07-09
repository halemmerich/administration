#!/bin/bash

. ../../../helper/helpers.sh

apt-get --assume-yes install znc

USER="znc"

createNoLoginServiceUser "$USER"

#sudo -u "$USER" /usr/bin/znc --datadir=/var/lib/znc --makeconf
chown znc:znc files/var/lib/znc/configs/znc.conf
replaceWithLink files/var/lib/znc/configs/znc.conf /var/lib/znc/configs/znc.conf
replaceWithLink files/etc/systemd/system/znc.service /etc/systemd/system/znc.service

systemctl enable znc
systemctl start znc
