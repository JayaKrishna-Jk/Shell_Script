#!bin/bash

####################################
#Author:Jk
#Date:16/02/2025
#
#This Script is to check Node Health
#
#Version:V1
####################################

set -e #Exit when encounter error
set -o pipefail  #if we have error in command of pipe it will check last command and if it last command is good it will not throw error

echo "Executing nodehealth.sh..."

df -h

free -g

nproc

ps -ef | grep "root" | awk -F" " '{print $2}'

