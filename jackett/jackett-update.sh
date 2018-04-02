#!/bin/bash
# Script Name: AtoMiC Jackett Updater

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-stop.sh"
    source "$SCRIPTPATH/utils/mono/mono-installer.sh"
    source "$SCRIPTPATH/jackett/jackett-constants.sh"
    source "$SCRIPTPATH/inc/app-install-deps.sh"
    source "$SCRIPTPATH/inc/app-folders-create.sh"
    if "$SCRIPTPATH/jackett/jackett-version-handler.sh"; then
        source "$SCRIPTPATH/inc/app-git-download-release.sh"
        echo
    fi
    source "$SCRIPTPATH/inc/app-set-permissions.sh"
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-update-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi
source "$SCRIPTPATH/inc/exit.sh"
