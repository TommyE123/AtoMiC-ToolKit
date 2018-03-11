#!/bin/bash
# Script Name: AtoMiC Tautulli Systemd Update

sudo sed -i '/Type=forking/a Restart=on-failure' /etc/systemd/system/$APPSYSTEMD  || { echo -e $RED'Adding TYPE in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
sudo sed -i "s@User=tautulli@User=$UNAME@g" /etc/systemd/system/$APPSYSTEMD  || { echo -e $RED'Modifying USER in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
sudo sed -i "s@Group=nogroup@Group=$UGROUP@g" /etc/systemd/system/$APPSYSTEMD  || { echo -e $RED'Modifying GROUP in SYSTEMD file failed.'$ENDCOLOR; exit 1; }

sudo systemctl daemon-reload
sudo systemctl enable $APPSYSTEMD
