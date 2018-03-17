#!/bin/bash
# Script Name: AtoMiC FileBot Update

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-stop.sh"
    # TODO Can we update Snap?
    # TODO Update $APPNAME
    source "$SCRIPTPATH/inc/app-install-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
    source "$SCRIPTPATH/inc/exit.sh"
fi
