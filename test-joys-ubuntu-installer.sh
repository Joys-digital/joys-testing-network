#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install git wget build-essential mc tmux -y
sudo apt install software-properties-common -y&& sudo add-apt-repository -y ppa:ethereum/ethereum && sudo apt update && sudo apt install geth ethminer -y

#wget
sudo geth --datadir=/var/www/testjoys init testnet-genesis.json

#wget
sudo chmod +x testnet-start.sh

#wget
cp testnet-static-nodes.json /var/www/testjoys/geth
