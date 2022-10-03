#!/bin/bash

sudo apt update
sudo apt install -y gcc make libgmp-dev unzip
cd $HOME
rm -i main.zip
wget https://github.com/Aerbil/Time-lock-encryption/archive/main.zip
unzip -o main.zip
rm -f main.zip
cd Time-lock-encryption-main/src
make
