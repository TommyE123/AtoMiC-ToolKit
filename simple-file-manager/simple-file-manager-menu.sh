#!/bin/bash
# Script Name: AtoMiC Simple-File-Manager Menu

SUBCHOICE=$(whiptail --title "AtoMiC Toolkit - Manage Simple-File-Manager" \
--menu "What would you like to do?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Install" "Install Simple-File-Manager" \
"Uninstall" "Uninstall Simple-File-Manager" \
"Manual Update" "Manually update Simple-File-Manager" \
"Set Password" "Set WebUI password" \
"Access Details" "View Simple-File-Manager access details" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/simple-file-manager/simple-file-manager-constants.sh"
    case "$SUBCHOICE" in
        "Install" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-installer.sh" ;;
        "Uninstall" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-uninstaller.sh" ;;
        "Manual Update" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-update.sh" ;;
        "Reset Password" ) source "$SCRIPTPATH/inc/app-password-set.sh" ;;
        "Access Details" ) source "$SCRIPTPATH/inc/app-access-details.sh" ;;
        "Go Back" ) source "$SCRIPTPATH/menus/menu-bittorrent.sh" ;;
        *) source "$SCRIPTPATH/inc/invalid-option.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
