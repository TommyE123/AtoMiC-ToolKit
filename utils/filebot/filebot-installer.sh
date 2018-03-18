#!/bin/bash
# Script Name: AtoMiC FileBot Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"

if IsSystemdSupported; then
    source "$SCRIPTPATH/inc/pause.sh"
    source "$SCRIPTPATH/inc/app-install-deps.sh"
    snap install $APPNAME
    source "$SCRIPTPATH/inc/app-install-confirmation.sh"
else
    echo -e "${RED}Distro not curently supported." \
            "Please consider upgrading to a newer version$ENDCOLOR"
fi
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
