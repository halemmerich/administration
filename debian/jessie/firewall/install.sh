#!/bin/bash

. ../../../helper/helpers.sh

apt-get --assume-yes install shorewall

mkdir -p /etc/shorewall/rules.d
replaceWithLink files/etc/shorewall/interfaces /etc/shorewall/interfaces
replaceWithLink files/etc/shorewall/policy /etc/shorewall/policy
replaceWithLink files/etc/shorewall/rules /etc/shorewall/rules
replaceWithLink files/etc/shorewall/zones /etc/shorewall/zones
replaceWithLink files/etc/default/shorewall /etc/default/shorewall

systemctl enable shorewall
