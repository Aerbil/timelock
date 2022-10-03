#!/bin/bash

sudo apt update
sudo apt install -y gcc make libgmp-dev unzip
rm -f main.zip
wget https://github.com/Aerbil/Time-lock-encryption/archive/main.zip
unzip main.zip
rm -f main.zip
cd Time-lock-encryption-main/src
make
