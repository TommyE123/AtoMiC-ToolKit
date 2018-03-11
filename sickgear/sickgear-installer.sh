#!/bin/bash
# Script Name: AtoMiC SickGear Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/utils/python/python-installer.sh"
source "$SCRIPTPATH/sickgear/sickgear-constants.sh"

PythonVersion=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)')
vercomp "$PythonVersion" "$APPPYTHONVERREQ"
if [[ $? = 2 ]]; then
    echo -e "${RED}Python Version $PythonVersion is not supported.($APPPYTHONVERREQ required) Please consider upgrading your Linux OS.$ENDCOLOR"
else
    source "$SCRIPTPATH/inc/app-autostart-remove.sh"
    source "$SCRIPTPATH/inc/app-move-previous.sh"
    source "$SCRIPTPATH/inc/app-install-deps.sh"
    source "$SCRIPTPATH/inc/app-git-download.sh"
    source "$SCRIPTPATH/inc/app-autostart-configure.sh"

    cp -a $APPPATH/autoProcessTV/autoProcessTV.cfg.sample $APPPATH/autoProcessTV/autoProcessTV.cfg || { echo -e $RED'Could not copy autoProcess.cfg.'$ENDCOLOR ; exit 1; }

    source "$SCRIPTPATH/inc/app-set-permissions.sh"
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-install-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi
source "$SCRIPTPATH/inc/exit.sh"
