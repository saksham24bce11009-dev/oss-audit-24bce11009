#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="git"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "--- Philosophy Note ---"
case $PACKAGE in
    git) echo "Git: The tool Linus built when proprietary failed him." ;;
    apache2) echo "Apache: The web server that built the open internet." ;;
    mysql-server) echo "MySQL: Open source at the heart of millions of apps." ;;
    *) echo "A great open source tool." ;;
esac