#!/bin/bash
# Script Name: AtoMiC Resilio Sync Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/$APPNAME/$APPNAME-repository-configurator.sh"
source "$SCRIPTPATH/inc/app-repository-add.sh"
source "$SCRIPTPATH/inc/pkgupdate.sh"
source "$SCRIPTPATH/inc/app-folders-create.sh"
# Just adds the override and updates it for systemd.
source "$SCRIPTPATH/inc/app-autostart-configure.sh"
source "$SCRIPTPATH/inc/app-install.sh"
source "$SCRIPTPATH/inc/app-set-permissions.sh"
source "$SCRIPTPATH/$APPNAME/$APPNAME-settings-configurator.sh"
source "$SCRIPTPATH/inc/app-start.sh"
source "$SCRIPTPATH/inc/app-install-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
