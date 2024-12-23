#!/bin/bash

BIN_DIR="$HOME/.local/bin"
AUX_DIR="$HOME/.local/share/initc"

echo "Creating missing folders..."
mkdir -p ${BIN_DIR}
mkdir -p ${AUX_DIR}

echo "Copying files over..."
cp src/initc ${BIN_DIR}
cp -r resources/presets/* ${AUX_DIR}

echo "Installation finished!"

