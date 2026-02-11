#!/bin/bash

#Update the sys
dnf update -y

#Clean up
dnf autoremove

#Log the update
echo "Updates completed on $(date)" >> /var/log/auto-update.log
