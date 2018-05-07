#!/bin/bash
# Script Name: AtoMiC Emby Updater

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    GREPOUT=$(grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/* | grep "$APPREPOSITORYNAME")
    if [[ -n "$GREPOUT" ]]; then
        # Added 24/04/2018 - Remove once users had a chance to update
        source "$SCRIPTPATH/$APPNAME/$APPNAME-repository-configurator.sh"
        source "$SCRIPTPATH/inc/app-autostart-remove.sh"
        mv "$APPSETTINGS" "$SCRIPTPATH/tmp"
        source "$SCRIPTPATH/inc/app-uninstall.sh"
        source "$SCRIPTPATH/inc/app-repository-remove.sh"
        source "$SCRIPTPATH/$APPNAME/$APPNAME-downloadext.sh"
        source "$SCRIPTPATH/inc/app-git-download-release.sh"
        sudo usermod -a -G emby "$UNAME"
        mv "$SCRIPTPATH/tmp" "$APPSETTINGS"
        source "$SCRIPTPATH/inc/app-start.sh"
    elif "$SCRIPTPATH/emby-server/emby-server-version-handler.sh"; then
        source "$SCRIPTPATH/inc/app-stop.sh"
        source "$SCRIPTPATH/$APPNAME/$APPNAME-downloadext.sh"
        source "$SCRIPTPATH/inc/app-git-download-release.sh"
        source "$SCRIPTPATH/inc/app-start.sh"
        echo
    fi
    source "$SCRIPTPATH/inc/app-update-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi

source "$SCRIPTPATH/inc/exit.sh"
