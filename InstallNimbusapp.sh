# Copy nimbusapp file to /usr/local/bin
# Make a copy of it for restore purposes first.

cp /usr/local/bin/nimbusapp /usr/local/bin/nimbusapp.orig

dos2unix ./nimbusapp1.4.0_ms.txt
sudo cp ./nimbusapp1.4.0_ms.txt /usr/local/bin/nimbusapp

sudo chmod +x /usr/local/bin/nimbusapp