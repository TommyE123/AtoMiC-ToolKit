#!/bin/bash
# Script Name: AtoMiC FileBot Installer

source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"

if IsSystemdSupported; then
    source "$SCRIPTPATH/inc/pause.sh"
    source "$SCRIPTPATH/inc/app-install-deps.sh"
    echo
    echo -e "$YELLOW--->Installing snap $APPTITLE package...$ENDCOLOR"

    if [[ -d $APPPATH ]]; then
        echo "$APPTITLE already installed"
        echo
    else
        snap install "$APPNAME"
        source "$SCRIPTPATH/inc/app-install-confirmation.sh"
    fi
    source "$SCRIPTPATH/utils/filebot/filebot-patron.sh"
else
    echo -e "${RED}Distro not curently supported." \
                "Please consider upgrading to a newer version$ENDCOLOR"
fi

source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
