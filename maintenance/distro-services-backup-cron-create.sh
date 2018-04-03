#!/bin/bash
#Create the update Cron Job
echo -e "${GREEN}AtoMiC Cron Job Installer Script$ENDCOLOR"
echo
echo "Are you sure you want to create a cron job to run every sunday at 2am to backup all your services configs?"

source "$SCRIPTPATH/inc/pause.sh"

echo -e "$YELLOW--->Creating Backup Services Cron Job...$ENDCOLOR"
CRONCMD="$SCRIPTPATH/maintenance/distro-services-backup-cron.sh #AtoMiC-ToolKit"
CRONJOB="0 2 * * 7 $CRONCMD"

source "$SCRIPTPATH/inc/crontab-handler.sh"
if AddCronTab; then
    source "$SCRIPTPATH/inc/thankyou.sh"
fi

source "$SCRIPTPATH/inc/exit.sh"
