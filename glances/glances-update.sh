#!/bin/bash
# Script Name: AtoMiC Glances Update

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-stop.sh"
    source "$SCRIPTPATH/utils/python/python-installer.sh" 'python3'
    source "$SCRIPTPATH/glances/glances-constants.sh"
    source "$SCRIPTPATH/inc/app-install-pips.sh" 'pip3'
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-install-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
    source "$SCRIPTPATH/inc/exit.sh"
fi
