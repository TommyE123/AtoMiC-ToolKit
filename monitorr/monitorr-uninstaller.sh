#!/bin/bash
# Script Name: AtoMiC Monitorr Uninstaller

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Uninstaller Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/monitorr/monitorr-constants.sh"
source "$SCRIPTPATH/inc/app-file-del.sh"
source "$SCRIPTPATH/utils/nginx/nginx-disable-location.sh" 'SKIP'
source "$SCRIPTPATH/inc/app-uninstall-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
