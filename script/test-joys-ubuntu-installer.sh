#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install git wget build-essential mc tmux -y
sudo apt install software-properties-common -y&& sudo add-apt-repository -y ppa:ethereum/ethereum && sudo apt update && sudo apt install geth ethminer -y

#wget
sudo geth --datadir=/var/www/joys init genesis.json

#wget
sudo chmod +x start.sh

#wget
cp static-nodes.json /var/www/joys/geth

wget http://us.download.nvidia.com/XFree86/Linux-x86_64/390.67/NVIDIA-Linux-x86_64-390.67.run
#sudo chmod +x NVIDIA-Linux-x86_64-384.98.run
sudo chmod +x NVIDIA-Linux-x86_64-390.67.run
