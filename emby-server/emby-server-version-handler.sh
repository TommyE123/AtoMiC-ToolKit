#!/bin/bash
# Script Name: AtoMiC Jackett Version Check

echo
source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/emby-server/emby-server-constants.sh"

echo -e "${YELLOW}--->Emby-Server Version Check...$ENDCOLOR"
source "$SCRIPTPATH/$APPNAME/$APPNAME-downloadext.sh"
AVAILABLEVERSION="$(curl -s "$APPDOWNLOADURL" | \
grep "$APPDOWNLOADEXT" | \
grep browser_download_url | \
head -n 1 | \
cut -d '"' -f 4 | \
sed "s/.*deb_\\(.*\\)_$APPDOWNLOADEXT.*/\\1/")"

echo "Available Version: $AVAILABLEVERSION"
vercomp "$(dpkg -s emby-server | grep Version | cut -d " " -f2-)" "$AVAILABLEVERSION"
if [[ $? != 2 ]]; then
    echo "Update not required"
    exit 1
else
    echo "Update Required"
fi
