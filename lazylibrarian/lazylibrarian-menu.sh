#!/bin/bash
# Script Name: AtoMiC Lazy Librarian Menu

SUBCHOICE=$(whiptail --title "AtoMiC Toolkit - Manage Lazy Librarian" \
--menu "What would you like to do?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Install" "Install Lazy Librarian" \
"Uninstall" "Uninstall Lazy Librarian" \
"Backup" "Backup Lazy Librarian settings" \
"Restore" "Restore Lazy Librarian settings from a previous backup" \
"Manual Update" "Manually update Lazy Librarian" \
"Enable Reverse Proxy" "Allow access" \
"Disable Reverse Proxy" "Remove access" \
"Reset Password" "Reset Lazy Librarian WebUI password" \
"Access Details" "View Lazy Librarian access details" \
"Access Switch" "Toggle Lazy Librarian UI network accessibility" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/lazylibrarian/lazylibrarian-constants.sh"
    case "$SUBCHOICE" in
        "Install" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-installer.sh" ;;
        "Uninstall" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-uninstaller.sh" ;;
        "Backup" ) source "$SCRIPTPATH/inc/app-backup-controller.sh" ;;
        "Restore" ) source "$SCRIPTPATH/inc/app-restore-controller.sh" ;;
        "Manual Update" ) source "$SCRIPTPATH/$APPNAME/$APPNAME-update.sh" ;;
        "Enable Reverse Proxy" ) source "$SCRIPTPATH/utils/nginx/nginx-enable-location.sh" ;;
        "Disable Reverse Proxy" ) source "$SCRIPTPATH/utils/nginx/nginx-disable-location.sh" ;;
        "Reset Password" )
            source "$SCRIPTPATH/inc/app-password-reset-controller.sh" ;;
        "Access Details" ) source "$SCRIPTPATH/inc/app-access-details.sh" ;;
        "Access Switch" ) source "$SCRIPTPATH/inc/app-access-switch.sh" ;;
        "Go Back" ) source "$SCRIPTPATH/menus/menu-pvrs.sh" ;;
        *) source "$SCRIPTPATH/inc/invalid-option.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
