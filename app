#!/usr/bin/sh

set -eo pipe

echo "Start copying files..."
cp "${AUGUR_HOME}/in.txt" "${AUGUR_HOME}/out.txt"
echo "Copied Files."
