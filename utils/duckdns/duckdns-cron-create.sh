#!/bin/bash
echo -e "${GREEN}AtoMiC Duck DNS Cron Job Installer Script$ENDCOLOR"

source "$SCRIPTPATH/utils/duckdns/duckdns-questions.sh"

if [[ -n $DOMAINNAME ]] && [[ -n $TOKENID ]]; then

    source "$SCRIPTPATH/inc/app-folders-create.sh"
    source "$SCRIPTPATH/utils/duckdns/duckdns-template-configure.sh"
    echo
    echo -e "$YELLOW--->Creating Duck DNS Cron Job...$ENDCOLOR"
    CRONCMD="$APPPATH/duck.sh #DuckDNS"
    CRONJOB="*/5 * * * * $CRONCMD"

    if crontab -l | grep -q "$CRONCMD" ; then
        echo 'Cron job already exists'
    else
        if ( crontab -l | grep -v -F "$CRONCMD" ; echo "$CRONJOB" ) | crontab - ; then
            echo "Cron job created"
            echo "To easily adjust the time/frequency, install webmin and find it under the scheduled cron jobs menu option."
        else
            echo -e "${YELLOW}Failed to create Cron Job$ENDCOLOR"
        fi
    fi

    source "$APPPATH/duck.sh"
 
    echo -e "${GREEN}---> $APPTITLE installation complete.$ENDCOLOR"
fi
