#!/bin/bash
# Script Name: AtoMiC Aria2 system configure

if cp "$SCRIPTPATH/aria2/aria2.daemon" "/home/$UNAME/.config/aria2/aria2.daemon" || \
    { echo -e "${RED}Copy aria2.daemon file failed.$ENDCOLOR" ; exit 1; }; then
    echo "aria2.daemon file copied over"
fi

ReplaceString "dir=/home/UNAME" "dir=/home/$UNAME" "$APPSETTINGS"
ReplaceString "rpc-secret=" "rpc-secret=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c12)" "$APPSETTINGS"
