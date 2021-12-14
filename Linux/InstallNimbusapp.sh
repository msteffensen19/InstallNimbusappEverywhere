#!/bin/sh
# Copy nimbusapp file to /usr/local/bin
# Make a copy of it for restore purposes first

echo "Backing up the current nimbusapp command to nimbusapp.orig..."
sudo cp /usr/local/bin/nimbusapp /usr/local/bin/nimbusapp.orig

echo "Copying new nimbusapp command to /usr/local/bin"
dos2unix ../nimbusapp_1.6.0_ms
sudo cp  ../nimbusapp_1.6.0_ms /usr/local/bin/nimbusapp

sudo chmod +x /usr/local/bin/nimbusapp
echo "Done!"
