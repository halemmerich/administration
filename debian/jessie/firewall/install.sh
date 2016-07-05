#!/bin/bash
apt-get --assume-yes install shorewall
cp /usr/share/doc/shorewall/examples/one-interface/interfaces /etc/shorewall/
cp /usr/share/doc/shorewall/examples/one-interface/policy /etc/shorewall/
cp /usr/share/doc/shorewall/examples/one-interface/rules /etc/shorewall/
cp /usr/share/doc/shorewall/examples/one-interface/zones /etc/shorewall/
