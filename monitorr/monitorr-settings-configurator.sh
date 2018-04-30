#!/bin/bash
# Script Name: AtoMiC Monitorr settings configurator

echo
echo -e "$YELLOW--->Configuring Monitorr Settings...$ENDCOLOR"

sudo chmod 755 -R "$APPPATH"
sudo chown -R www-data:www-data "$APPPATH"
sudo chmod 755 -R "$APPSETTINGSDIR"
sudo chown -R www-data:www-data "$APPSETTINGSDIR"
echo "Set the correct folder permissions"
