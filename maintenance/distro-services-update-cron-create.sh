#!/bin/bash

#Create the update Cron Job
echo -e "${GREEN}AtoMiC Cron Job Installer Script$ENDCOLOR"
echo
echo "Are you sure you want to create a cron job to run every night at 12am to update all packages and installed services?"

source "$SCRIPTPATH/inc/pause.sh"

echo -e "$YELLOW--->Creating Update Packages and Services Cron Job...$ENDCOLOR"
CRONCMD="$SCRIPTPATH/maintenance/distro-services-update-cron.sh #AtoMiC-ToolKit"
CRONJOB="0 0 * * * $CRONCMD"

if crontab -l | grep -q "$CRONCMD" ; then
    echo 'Cron job already exists'
else
    if ( crontab -l | grep -v -F "$CRONCMD" ; echo "$CRONJOB" ) | crontab - ; then
        echo "Cron job created, This will pick up any future service installs as well."
        echo "To easily adjust the time/frequency, install webmin and find it under the scheduled cron jobs menu option."
    else
        echo -e "${YELLOW}Failed to create Cron Job$ENDCOLOR"
    fi
fi
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
