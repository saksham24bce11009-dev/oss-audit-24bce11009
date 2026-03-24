#!/bin/bash
# Script 1: System Identity Report
# Author: Saksham
# Course: Open Source Software
STUDENT_NAME="Saksham"
SOFTWARE_CHOICE="Git"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME' | cut -d= -f2 | tr -d '"')
DATE=$(date)

echo "======================================"
echo " Open Source Audit - System Report"
echo "======================================"
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "OS: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USER_NAME"
echo "Home: $HOME"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
echo "License: This OS is covered by the GPL (GNU General Public License)."