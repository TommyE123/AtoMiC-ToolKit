#!/bin/bash
# Script Name: AtoMiC Emby Installer

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

# Added 24/04/2018 - Remove once user had a chance to update
source "$SCRIPTPATH/$APPNAME/$APPNAME-repository-configurator.sh"
source "$SCRIPTPATH/inc/app-autostart-remove.sh"
source "$SCRIPTPATH/inc/app-uninstall.sh"
source "$SCRIPTPATH/inc/app-repository-remove.sh"
# Added 24/04/2018 - Remove once user had a chance to update

source "$SCRIPTPATH/$APPNAME/$APPNAME-downloadext.sh"
source "$SCRIPTPATH/inc/app-git-download-release.sh"
sudo usermod -a -G emby "$UNAME"
source "$SCRIPTPATH/inc/app-start.sh"
source "$SCRIPTPATH/inc/app-install-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
