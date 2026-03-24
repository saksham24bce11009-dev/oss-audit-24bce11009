#!/bin/bash
# Script 5: Open Source Manifesto Generator
echo "Answer three questions to generate your manifesto."
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I declare that tools like $TOOL empower me." > $OUTPUT
echo "To me, software freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I commit to building and sharing $BUILD openly." >> $OUTPUT

echo "--- Manifesto saved to $OUTPUT ---"
cat $OUTPUT