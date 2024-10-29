#!/bin/bash

*****************************
Author:- Amanjot
Project:-Shell-Script
Date:-28-oct-2024
*****************************

set -x #debug mode
set -o #pipefail
set -e #Exit from Script if the error occur

echo "Print the no of CPU"
nproc

echo "Print the no of Running Process"
ps -ef

echo "Print the Availble RAM"
free -g

echo "Print the Available Disk Space"
df -h

#echo "Print result of all the commands in single command"
#top

echo "Print the awk command"
ps -ef | grep "amazon" | awk -F" " '{print $2}'

echo "Difference between curl and wget command"
wget - download the file first and then open
curl - direct show the content
