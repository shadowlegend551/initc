#!/bin/bash

mv "${HOME}/.local/share/initc/custom" .
git pull git@github.com:shadowlegend551/initc.git
./install.sh
mv "custom" "${HOME}/.local/share/initc"

