#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev \
    bsdmainutils libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev \
    libboost-test-dev libboost-thread-dev software-properties-common libminiupnpc-dev libzmq3-dev libqt5gui5 \
    libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler ca-certificates --no-install-recommends

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update -y
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev

git clone https://github.com/Crypto-lyon/Leolitecoin.git
cd Leolitecoin
./autogen.sh
./configure
make -j4
sudo make install
