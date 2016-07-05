#!/bin/bash

. ../../../

apt-get --assume-yes install ssh


mkdir -p /etc/shorewall/rules.d
replaceWithLink files/etc/shorewall/rules.d/ssh.rules /etc/shorewall/rules.d/ssh.rules
