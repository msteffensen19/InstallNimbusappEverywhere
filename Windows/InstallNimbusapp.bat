@echo off
:: Nimbusapp installation on Windows
:: Requires docker to already be install in C:\Programs\Docker
:: Requires Strawberry Perls vv5.20.0 or greater

echo ---Backing up existing nimbusapp.pl file into nimbusapp.pl.orig (if it exists)
echo f | xcopy /f /y "C:\Program Files\Docker\nimbusapp.pl" "C:\Program Files\Docker\nimbusapp.pl.orig"

echo ---Copying in new nimbusapp.pl file...

echo f | xcopy /f /y "..\nimbusapp.1.6.3_ms"  "C:\Program Files\Docker\nimbusapp.pl"

echo ---Copying in nimbusapp.bat file...
echo f | xcopy /f /y "..\nimbusapp.bat"  "C:\Program Files\Docker\nimbusapp.bat"

echo ---Done!
