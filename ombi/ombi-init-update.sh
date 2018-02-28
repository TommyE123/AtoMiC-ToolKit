#!/bin/bash
# Script Name: AtoMiC Ombi init.d update
# Author: mgiljum
# Publisher: http://www.htpcbeginner.com

echo 'Updating init.d file'
sudo sed -i "s@user=\"ReplaceMe\"@user=\"$UNAME\"@g" /etc/init.d/$APPINITD || \
{ echo -e "${RED}Replacing user failed.$ENDCOLOR" ; exit 1; }

sudo sed -i "s@group=\"ReplaceMe\"@group=\"$UGROUP\"@g" /etc/init.d/$APPINITD || \
{ echo -e "${RED}Replacing group failed.$ENDCOLOR" ; exit 1; }
