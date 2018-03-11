#!/bin/bash
# Script Name: AtoMiC Radarr Updater

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-stop.sh"
    source "$SCRIPTPATH/utils/mono/mono-installer.sh"
    source "$SCRIPTPATH/radarr/radarr-constants.sh"
    source "$SCRIPTPATH/inc/app-install-deps.sh"
    if "$SCRIPTPATH/radarr/radarr-version-handler.sh"; then
        source "$SCRIPTPATH/radarr/radarr-download.sh"
    fi
    source "$SCRIPTPATH/inc/app-set-permissions.sh"
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-update-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi
source "$SCRIPTPATH/inc/exit.sh"
