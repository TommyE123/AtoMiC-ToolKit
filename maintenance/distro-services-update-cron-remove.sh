#!/bin/bash

#Create the update Cron Job
echo -e "${GREEN}AtoMiC Cron Job Installer Script$ENDCOLOR"
echo
echo "Are you sure you want to remove a cron job?"

source "$SCRIPTPATH/inc/pause.sh"

echo -e "$YELLOW--->Creating Update Packages and Services Cron Job...$ENDCOLOR"
CRONCMD="$SCRIPTPATH/maintenance/distro-services-update-cron.sh #AtoMiC-ToolKit"

if crontab -l | grep -q "$CRONCMD" ; then
    if ( crontab -l | grep -v -F "$CRONCMD" ) | crontab - ; then
        echo "Cron job Removed"
    fi
else
    echo "Cron job not found"
fi
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
