#!/bin/bash

sudo apt update
sudo apt install -y gcc make libgmp-dev unzip
cd Time-lock-encryption/src
make
mv ./dtlp ../
mv ./etlp ../
cd
