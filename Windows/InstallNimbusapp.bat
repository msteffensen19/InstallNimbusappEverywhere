@echo off
:: Nimbusapp installation on Windows
:: Requires docker to already be install in C:\Programs\Docker
:: Requires Strawberry Perl v5.38.2.2 or greater

echo "---Downloading a compatible version of Strawberry Perl (5.38.2.2 - 175 MB)..."
echo "---This can take 5 minutes or so."
curl.exe -OL https://github.com/StrawberryPerl/Perl-Dist-Strawberry/releases/download/SP_53822_64bit/strawberry-perl-5.38.2.2-64bit.msi
echo "---Follow the prompts and allow Perl to be installed to C:\strawberry..."

echo "---Installing Perl 5.38.2.2 - Approve and follow the prompts"
.\strawberry-perl-5.38.2.2-64bit.msi

echo "---Removing Strawberry Perl MSI file..."
:: del .\strawberry-perl-5.38.2.2-64bit.msi

echo ---Backing up existing nimbusapp.pl file into nimbusapp.pl.orig (if it exists)
echo f | xcopy /f /y "C:\Program Files\Docker\nimbusapp.pl" "C:\Program Files\Docker\nimbusapp.pl.orig"

echo ---Copying in new nimbusapp.pl file...

echo f | xcopy /f /y "..\nimbusapp.1.6.3_ms"  "C:\Program Files\Docker\nimbusapp.pl"

echo ---Copying in nimbusapp.bat file...
echo f | xcopy /f /y "..\nimbusapp.bat"  "C:\Program Files\Docker\nimbusapp.bat"

echo ---Done!
