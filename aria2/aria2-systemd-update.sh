#!/bin/bash
# Script Name: AtoMiC Aria2 systemd update

ReplaceString "User=ReplaceMe" "User=$UNAME" "/etc/systemd/system/$APPSYSTEMD"
ReplaceString "Group=ReplaceMe" "Group=$UGROUP" "/etc/systemd/system/$APPSYSTEMD"
ReplaceString "path=/home/UNAME" "path=/home/$UNAME" "/etc/systemd/system/$APPSYSTEMD"

sudo systemctl daemon-reload
sudo systemctl enable "$APPSYSTEMD"
