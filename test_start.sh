#!/bin/bash
THISHOST=$(hostname -f)
MYWALLET=0x56144ca5ea7e0406073ae393e4015b7f64170777

geth \
--datadir=/var/www/testjoys \
--rpccorsdomain="*" \
--networkid=TODO \
--rpc \
--etherbase=$MYWALLET \
--bootnodes="enode://1750c090cd33c713c5bdba7d77e01223126fe5bde3a9829ef177a33bb911da3d1c5369ea089e1862c4c149761249c702c00fce70cefe764d6dbfc2853bf74848@31.186.100.62:32101" \
--nat "any" \
--mine -minerthreads=1 \
--port 32101 \
--ethstats=$THISHOST:8382716d0b07b0a3@eth.joys.digital:3000 console
