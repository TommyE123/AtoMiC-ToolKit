#!/bin/bash
# Script Name: AtoMiC Simple-File-Manager Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/utils/nginx/nginx-installer.sh"
source "$SCRIPTPATH/simple-file-manager/simple-file-manager-constants.sh"
source "$SCRIPTPATH/inc/app-move-previous.sh"
source "$SCRIPTPATH/inc/app-git-download.sh"
source "$SCRIPTPATH/simple-file-manager/simple-file-manager-settings-configurator.sh"
source "$SCRIPTPATH/utils/nginx/nginx-enable-location.sh" 'SKIP'
source "$SCRIPTPATH/inc/app-install-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
