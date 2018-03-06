#!/bin/bash
echo -e "${GREEN}AtoMiC Duck DNS Cron Job Installer Script$ENDCOLOR"

if crontab -l | grep -q "$CRONCMD" ; then
  source "$SCRIPTPATH/utils/duckdns/duckdns-questions.sh"

  if [[ -n $DOMAINNAME ]] && [[ -n $TOKENID ]]; then
      source "$SCRIPTPATH/inc/app-folders-create.sh"
      source "$SCRIPTPATH/utils/duckdns/duckdns-template-configure.sh"
      echo
      echo -e "$YELLOW--->Creating Duck DNS Cron Job...$ENDCOLOR"
      CRONCMD="$APPPATH/duck.sh #DuckDNS"
      CRONJOB="*/5 * * * * $CRONCMD"

      if ( crontab -l | grep -v -F "$CRONCMD" ; echo "$CRONJOB" ) | crontab - ; then
          echo "Cron job created"
          echo "To easily adjust the time/frequency, install webmin and find it under the scheduled cron jobs menu option."
      else
          echo -e "${YELLOW}Failed to create Cron Job$ENDCOLOR"
      fi
      source "$SCRIPTPATH/utils/duckdns/duckdns-domain-add.sh"
      echo
      source "$APPPATH/duck.sh"

      if [[ $(cat "$APPSETTINGSDIR/duck.log") == 'OK' ]]; then
          echo -e "${GREEN}Successfully updated IP on Duck DNS$ENDCOLOR"
          echo
          LANIP=$(hostname -I | cut -d" " -f1)
          LANIP=${LANIP//[[:blank:]]/}
          echo -e "$YELLOW--->Port forward info...$ENDCOLOR"
          echo -e "You will now need to enable port forwarding on your router for ports 80 and 443 to your local ip: ${GREEN}$LANIP$ENDCOLOR."
          echo -e "For more information on how to do this please try visiting ${CYAN}https://portforward.com$ENDCOLOR, Find your router and set the application type to Apache."
      else
          echo -e "${RED}Failed to update IP on Duck DNS. Please check you've entered your details correctly.$ENDCOLOR"
      fi
      echo -e "${GREEN}---> $APPTITLE installation complete.$ENDCOLOR"
  fi
else
    echo 'Cron job already exists'
fi
