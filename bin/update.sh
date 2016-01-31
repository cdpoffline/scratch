#!/bin/bash

cd "`dirname \"$0\"`"

cd ../web

mkdir -p downloads
cd downloads


mkdir -p "Scratch 2"
cd "Scratch 2"
# from https://scratch.mit.edu/scratch2download/
# 
# https://mit.scratch.edu with --no-check-certificate because of
#   WARNUNG: Dem Zertifikat von »scratch.mit.edu« wird nicht vertraut.
#   WARNUNG: Das Zertifikat von »»scratch.mit.edu«« wurde von einem unbekannten Austeller herausgegeben.
#
# from http://stackoverflow.com/questions/7885785/using-openssl-to-get-the-certificate-from-a-server#7910869 
#   openssl s_client -showcerts -servername scratch.mit.edu -connect scratch.mit.edu:443 </dev/null
#
# TODO: openssl shows that everything is fine but
#       wget -c -N still does not accept the certificates


mkdir -p Linux
cd Linux
echo "Scratch for Linux"

wget -c -N http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
wget -c -N --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.air

cd ..
mkdir -p Windows
cd Windows
echo "Scratch for Windows"

wget -c -N http://airdownload.adobe.com/air/win/download/20.0/AdobeAIRInstaller.exe
wget -c -N --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.exe

cd ..
mkdir -p MacOS
cd MacOS
echo "Scratch for Mac OS 10.5 or older"

wget -c -N http://airdownload.adobe.com/air/mac/download/2.6/AdobeAIR.zip
wget -c -N --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.air

cd ..
mkdir -p "MacOS X"
cd "MacOS X"
echo "Scratch for MacOS X"

wget -c -N http://airdownload.adobe.com/air/mac/download/20.0/AdobeAIR.dmg
wget -c -N --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.dmg

cd ..
mkdir -p "Support Materials"
cd "Support Materials"
echo "Support Materials"

wget -c -N --no-check-certificate https://scratch.mit.edu/scratchr2/static/sa/Scratch2StarterProjects.zip
wget -c -N --no-check-certificate https://cdn.scratch.mit.edu/scratchr2/static/__29cebbddad1a2303315dedb62fd76793__/pdfs/help/Getting-Started-Guide-Scratch2.pdf
wget -c -N --no-check-certificate https://cdn.scratch.mit.edu/scratchr2/static/__29cebbddad1a2303315dedb62fd76793__/pdfs/help/Scratch2Cards.pdf

cd ../.. # downloads

mkdir -p "Scratch 1"
cd "Scratch 1"
# from --no-check-certificate https://scratch.mit.edu/scratch_1.4/

mkdir -p Linux
cd Linux
echo "Scratch for Linux"

wget -c -N http://ubuntu.media.mit.edu/ubuntu//pool/universe/s/scratch/scratch_1.4.0.6~dfsg1-5~ubuntu12.04.1_all.deb

cd ..
mkdir -p Windows
cd Windows
echo "Scratch for Windows"

wget -c -N --no-check-certificate https://download.scratch.mit.edu/ScratchInstaller1.4.exe

cd ..
mkdir -p "MacOS X"
cd "MacOS X"
echo "Scratch for MacOS X"

wget -c -N --no-check-certificate https://download.scratch.mit.edu/MacScratch1.4.dmg

cd ../.. # downloads
