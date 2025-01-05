#!/bin/bash

echo "Backing up custom languages..."
mv "${HOME}/.local/share/initc/custom" .

echo "Pulling newest commit..."
git pull git@github.com:shadowlegend551/initc.git

echo "Reinstalling initc..."
./install.sh

echo "Restoring custom languages..."
mv "custom" "${HOME}/.local/share/initc"

echo "Finished updating!"

