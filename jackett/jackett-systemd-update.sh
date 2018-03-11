#!/bin/bash
# Script Name: AtoMiC Jackett Systemd Update

sudo sed -i "s@User=ReplaceMe@User=$UNAME@g" \
"/etc/systemd/system/$APPSYSTEMD" || \
{ echo -e "${RED}Modifying USER in SYSTEMD file failed.$ENDCOLOR"; exit 1; }

sudo systemctl daemon-reload
sudo systemctl enable "$APPSYSTEMD"
