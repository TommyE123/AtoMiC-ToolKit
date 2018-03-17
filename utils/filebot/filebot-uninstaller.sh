#!/bin/bash
# Script Name: AtoMiC FileBot Uninstaller

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Uninstaller Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
echo
echo -e "$YELLOW--->Uninstalling pip $APPTITLE package...$ENDCOLOR"
# TODO Remove FileBot
source "$SCRIPTPATH/inc/app-uninstall-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
