#!/bin/sh
# Copy nimbusapp file to /usr/local/bin
# Make a copy of it for restore purposes first

cp /usr/local/bin/nimbusapp /usr/local/bin/nimbusapp.orig

dos2unix ./nimbusapp_1.6_ms.txt
sudo cp  ./nimbusapp_1.6_ms.txt /usr/local/bin/nimbusapp

sudo chmod +x /usr/local/bin/nimbusapp
