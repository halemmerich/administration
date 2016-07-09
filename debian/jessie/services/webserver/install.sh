#!/bin/bash

. ../../helper/helpers.sh

apt-get --assume-yes install apache2
a2enmod ssl
