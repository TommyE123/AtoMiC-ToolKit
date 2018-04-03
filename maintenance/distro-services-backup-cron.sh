#!/bin/bash
# Force a backup of installed services
#export TERM=xterm
logger "Started AtoMiC-ToolKit Services backup"
SCRIPTPATH="$(dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )"

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
CI='YES'

if [[ ! -d $SCRIPTPATH/tmp ]]; then
    mkdir "$SCRIPTPATH/tmp"
fi

source "$SCRIPTPATH/batch-processes/bat-apps-backup.sh"
logger "Finished AtoMiC-ToolKit Services backup"
