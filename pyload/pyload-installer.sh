#!/bin/bash
# Script Name: AtoMiC pyLoad Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"
source "$SCRIPTPATH/inc/app-autostart-remove.sh"
source "$SCRIPTPATH/inc/app-move-previous.sh"
source "$SCRIPTPATH/inc/pkgupdate.sh"
source "$SCRIPTPATH/utils/python/python-installer.sh"
source "$SCRIPTPATH/pyload/pyload-constants.sh"
source "$SCRIPTPATH/inc/app-install-deps.sh"
source "$SCRIPTPATH/inc/app-install-pips.sh"
source "$SCRIPTPATH/inc/app-git-download.sh"
source "$SCRIPTPATH/inc/app-autostart-configure.sh"
source "$SCRIPTPATH/inc/app-set-permissions.sh"

# To get libmozjs running with pyLoad we need to create a symlink. 
sudo ln -sf /usr/bin/js24 /usr/bin/js

if [[ ! -f $APPSETTINGS ]] && [[ -z $CI ]]; then
    # Only run the setup if we've not done it before
    sudo -u "$UNAME" python /opt/pyload/pyLoadCore.py
    source "$SCRIPTPATH/inc/app-start.sh"
fi

source "$SCRIPTPATH/inc/app-install-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
