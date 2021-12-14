@echo off
:: Nimbusapp installation on Windows
:: Requires docker to already be install in C:\Programs\Docker

echo ---Backing up existing nimbusapp.pl file into nimbusapp.pl.orig
echo f | xcopy /f /y "C:\Program Files\Docker\nimbusapp.pl" "C:\Program Files\Docker\nimbusapp.pl.orig"

echo ---Copying in new nimbusapp.pl file...

echo f | xcopy /f /y "..\nimbusapp_1.6.0_ms"  "C:\Program Files\Docker\nimbusapp.pl"
echo ---Done!
