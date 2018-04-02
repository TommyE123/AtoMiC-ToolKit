#!/bin/bash
# Script Name: AtoMiC Simple-File-Manager settings configurator

echo
echo -e "$YELLOW--->Configuring Simple-File-Manager Settings...$ENDCOLOR"

sudo chmod 755 -R "$APPPATH"
sudo chown -R www-data:www-data "$APPPATH"
echo "Set the correct folder permissions"
