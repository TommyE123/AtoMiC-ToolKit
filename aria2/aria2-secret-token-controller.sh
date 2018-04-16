#!/bin/bash
# Script Name: AtoMiC Aria2 Secret Token Controller

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Secret Token Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    echo -e "Your current Secret Token is:" "${CYAN}$(grep rpc-secret "$APPSETTINGS" | cut -d= -f2)$ENDCOLOR"
    echo "You will need to enter this in Aria2-WebUI connection settings on EVERY device"
    echo -e "To change the token edit: ${CYAN}$APPSETTINGS$ENDCOLOR"
fi
