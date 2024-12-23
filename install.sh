#!/bin/bash

BIN_DIR="$HOME/.local/bin"
AUX_DIR="$HOME/.local/share/initc"
CONFIG_DIR="$HOME/.config/initc"

echo "Creating missing folders..."
mkdir -p ${BIN_DIR}
mkdir -p ${AUX_DIR}
mkdir -p ${CONFIG_DIR}

echo "Copying files over..."
cp src/initc ${BIN_DIR}
cp resources/* ${AUX_DIR}
cp config/initc.conf ${CONFIG_DIR}

echo "Installation finished!"

