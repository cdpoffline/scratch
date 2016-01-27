#!/bin/bash

cd ../web

rm -r downloads
mkdir downloads
cd downloads


mkdir "Scratch 2"
cd "Scratch 2"
# from https://scratch.mit.edu/scratch2download/

mkdir Linux
cd Linux
echo "Scratch for Linux"

wget http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
wget https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.air

cd ..
mkdir Windows
cd Windows
echo "Scratch for Windows"

wget http://airdownload.adobe.com/air/win/download/20.0/AdobeAIRInstaller.exe
wget https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.exe

cd ..
mkdir MacOS
cd MacOS
echo "Scratch for Mac OS 10.5 or older"

wget http://airdownload.adobe.com/air/mac/download/2.6/AdobeAIR.zip
wget https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.air

cd ..
mkdir "MacOS X"
cd "MacOS X"
echo "Scratch for MacOS X"

wget http://airdownload.adobe.com/air/mac/download/20.0/AdobeAIR.dmg
wget https://scratch.mit.edu/scratchr2/static/sa/Scratch-442.dmg

cd ..
mkdir Support Materials
cd "Support Materials"
echo "Support Materials"

wget https://scratch.mit.edu/scratchr2/static/sa/Scratch2StarterProjects.zip
wget https://cdn.scratch.mit.edu/scratchr2/static/__29cebbddad1a2303315dedb62fd76793__/pdfs/help/Getting-Started-Guide-Scratch2.pdf
wget https://cdn.scratch.mit.edu/scratchr2/static/__29cebbddad1a2303315dedb62fd76793__/pdfs/help/Scratch2Cards.pdf

cd ../.. # downloads

mkdir "Scratch 1"
cd "Scratch 1"
# from https://scratch.mit.edu/scratch_1.4/

mkdir Linux
cd Linux
echo "Scratch for Linux"

wget http://ubuntu.media.mit.edu/ubuntu//pool/universe/s/scratch/scratch_1.4.0.6~dfsg1-5~ubuntu12.04.1_all.deb

cd ..
mkdir Windows
cd Windows
echo "Scratch for Windows"

wget http://download.scratch.mit.edu/ScratchInstaller1.4.exe

cd ..
mkdir "MacOS X"
cd "MacOS X"
echo "Scratch for MacOS X"

wget http://download.scratch.mit.edu/MacScratch1.4.dmg

cd ../.. # downloads
