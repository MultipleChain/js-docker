#!/bin/bash

cd /usr/src/app/packages

cd evm-chains && npm install
cd ../bitcoin && npm install
cd ../solana && npm install
cd ../tron && npm install
cd ../spl-token-metadata && npm install
cd ../utils && npm install
cd ../web3modal && npm install

cd ../..

npm cache clean --force
npm install

node server.js
