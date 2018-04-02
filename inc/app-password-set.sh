#!/bin/bash
# Script Name: AtoMiC Password Changer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Password Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    NEWPASS=$(whiptail --inputbox "Please enter a password or leave blank." \
    10 60 --title "Password Reset" 3>&1 1>&2 2>&3)
    exitstatus=$?

    CURRRENTPASSSTRING=${grep $PASSSEARCH $APPSETTINGS}

    sed "s|*|$NEWPASS|" <<< $PASSSEARCH

    if sed -i "s|$CURRENTPASSSTRING|$PASSSEARCH|" $APPSETTINGS || \
        { echo -e "${RED}Setting password failed.$ENDCOLOR" ; exit 1; }; then
        echo -e "Password set to: $GREEN$NEWPASS$ENDCOLOR"
    fi
fi

source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
