#!/bin/bash
# Script Name: AtoMiC NZBHydra systemd update

sudo sed -i "s@ExecStart=/path-to/python2 /path-to/nzbhydra/nzbhydra.py --nobrowser@ExecStart=/usr/bin/python2 $APPPATH/nzbhydra.py --nobrowser --config $APPSETTINGS --database $APPPATH/nzbhydra.db@g" /etc/systemd/system/$APPSYSTEMD || { echo -e $RED'Modifying ExecStart in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
sudo sed -i "s@User=nzbhydra@User=$UNAME@g" /etc/systemd/system/$APPSYSTEMD || { echo -e $RED'Modifying USER in SYSTEMD file failed.'$ENDCOLOR; exit 1; }
sudo sed -i "s@Group=nzbhydra@Group=$UGROUP@g" /etc/systemd/system/$APPSYSTEMD || { echo -e $RED'Modifying GROUP in SYSTEMD file failed.'$ENDCOLOR; exit 1; }

sudo systemctl daemon-reload
sudo systemctl enable $APPSYSTEMD
