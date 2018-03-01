#!/bin/bash
echo -e "${GREEN}DuckDNS Removal Script$ENDCOLOR"
echo
echo "Are you sure you want to remove the DuckDNS update cron job?"

source "$SCRIPTPATH/inc/pause.sh"

echo -e "$YELLOW--->Removing Duck DNS Cron Job...$ENDCOLOR"
CRONCMD="$APPPATH/duck.sh #DuckDNS"

if crontab -l | grep -q "$CRONCMD" ; then
    if ( crontab -l | grep -v -F "$CRONCMD" ) | crontab - ; then
        echo "Cron job Removed"
    fi
else
    echo "Cron job not found"
fi

source "$SCRIPTPATH/inc/app-file-del.sh"
echo
echo -e "${GREEN}---> $APPTITLE Removal complete.$ENDCOLOR"
