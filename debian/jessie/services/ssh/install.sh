#!/bin/bash

. ../../helper/helpers.sh

apt-get --assume-yes install ssh


mkdir -p "/etc/shorewall/rules.d"
replaceWithLink ../../template/etc/shorewall/rules.d/ssh.rules /etc/shorewall/rules.d/ssh.rules
