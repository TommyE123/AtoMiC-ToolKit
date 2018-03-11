#!/bin/bash
# Script Name: AtoMiC PlexPy Uninstaller
echo
echo -e "${YELLOW}--->Plexpy Uninstall and Backup...$ENDCOLOR"

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/app-constant-reset.sh"
source "$SCRIPTPATH/tautulli/plexpy-constants.sh"
source "$SCRIPTPATH/inc/app-autostart-remove.sh"

if [[ -f "$APPSETTINGS" && -d /opt/Tautulli ]]; then
    if sudo cp /opt/plexpy/config.ini /opt/Tautulli/plexpy-config.ini.old || \
            { echo -e "${RED}Conf file not copied.$ENDCOLOR" ; exit 1; }; then
        echo 'Backed up /opt/plexpy/config.ini to /opt/Tautulli/plexpy-config.ini.old'
    fi
fi

if [[ -f "$APPSETTINGSDB" && -d /opt/Tautulli ]]; then
    if sudo cp /opt/plexpy/plexpy.db /opt/Tautulli/plexpy.db.old || \
            { echo -e "${RED}Conf file not copied.$ENDCOLOR" ; exit 1; }; then
        echo '/opt/plexpy/plexpy.db /opt/Tautulli/plexpy.db.old'
    fi
fi

if [[ -f "$APPSETTINGSDB" && -d /opt/Tautulli ]]; then
    if sudo cp /opt/plexpy/plexpy.db /opt/Tautulli/plexpy.db.old || \
            { echo -e "${RED}Conf file not copied.$ENDCOLOR" ; exit 1; }; then
        echo '/opt/plexpy/plexpy.db /opt/Tautulli/plexpy.db.old'
    fi
fi

if [[ -L /etc/nginx/locations-enabled/plexpy.atomic.conf ]]; then
    if sudo rm /etc/nginx/locations-enabled/plexpy.atomic.conf || \
            { echo -e "${RED}Failed to remove /etc/nginx/locations-enabled/plexpy.atomic.conf.$ENDCOLOR" ; exit 1; }; then
        echo 'Old /etc/nginx/locations-enabled/plexpy.atomic.conf removed'
    fi
fi

if [[ -f /etc/nginx/locations-available/plexpy.atomic.conf ]]; then
    if sudo rm /etc/nginx/locations-available/plexpy.atomic.conf || \
            { echo -e "${RED}Failed to remove /etc/nginx/locations-available/plexpy.atomic.conf$ENDCOLOR" ; exit 1; }; then
        echo 'Old /etc/nginx/locations-available/plexpy.atomic.conf removed'
    fi
fi

source "$SCRIPTPATH/inc/app-file-del.sh"
source "$SCRIPTPATH/inc/app-uninstall-confirmation.sh"
source "$SCRIPTPATH/inc/app-constant-reset.sh"
