#!/bin/bash
THISHOST=$(hostname -f)
MYWALLET=0x592d790a47778e1baef3bc00a4e06f32d840ffd0

geth \
--datadir=/var/www/testjoys \
--networkid=99415706 \
--etherbase=$MYWALLET \
--bootnodes="enode://afe6a25fb572987cf4fc0575fd93ad443ad445e064f14e16ab97fd6396f6f92c7bcb4e30c6487b9790c6e55049ac4d30ae257c2e94298d4c9cdb122d4ef28560@31.186.100.62:32101" \
--nat "any" \
--mine -minerthreads=1 \
--port 32101 
