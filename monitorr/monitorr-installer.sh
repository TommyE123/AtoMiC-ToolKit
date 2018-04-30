#!/bin/bash
# Script Name: AtoMiC Monitorr Installer

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/utils/nginx/nginx-installer.sh"
source "$SCRIPTPATH/monitorr/monitorr-constants.sh"
source "$SCRIPTPATH/inc/app-move-previous.sh"
source "$SCRIPTPATH/inc/app-git-download.sh"
source "$SCRIPTPATH/inc/app-folders-create.sh"
source "$SCRIPTPATH/monitorr/monitorr-settings-configurator.sh"
source "$SCRIPTPATH/utils/nginx/nginx-enable-location.sh" 'SKIP'
source "$SCRIPTPATH/inc/app-install-confirmation.sh"
echo
echo "*************************************************************"
echo -e "${GREEN}On initial setup set the 'Data Dir' to ${CYAN}/opt/monitorr/DataDir/$ENDCOLOR"
echo "*************************************************************"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
