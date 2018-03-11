#!/bin/bash
# Script Name: AtoMiC nzbToMedia Updater

echo -e "${GREEN}AtoMiC nzbToMedia Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/app-constant-reset.sh"
source "$SCRIPTPATH/utils/nzbtomedia/nzbtomedia-constants.sh"

if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/pkgupdate.sh"
    source "$SCRIPTPATH/utils/ffmpeg/ffmpeg-installer.sh"
    source "$SCRIPTPATH/utils/unrar/unrar-installer.sh"
    source "$SCRIPTPATH/utils/nzbtomedia/nzbtomedia-constants.sh"
    source "$SCRIPTPATH/inc/app-git-update.sh"
    echo -e "${GREEN}---> nzbToMedia update complete.$ENDCOLOR"
fi
source "$SCRIPTPATH/inc/app-constant-reset.sh"
