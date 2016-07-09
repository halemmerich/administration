#!/bin/bash

. ../../helper/helpers.sh

apt-get --assume-yes install shorewall

mkdir -p /etc/shorewall/rules.d
replaceWithLink ../../template/etc/shorewall/interfaces /etc/shorewall/interfaces
replaceWithLink ../../template/etc/shorewall/policy /etc/shorewall/policy
replaceWithLink ../../template/etc/shorewall/rules /etc/shorewall/rules
replaceWithLink ../../template/etc/shorewall/zones /etc/shorewall/zones
replaceWithLink ../../template/etc/default/shorewall /etc/default/shorewall

systemctl enable shorewall
