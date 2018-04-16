#!/bin/bash
# Script Name: AtoMiC Aria2 init.d update

echo 'Updating init.d file'

ReplaceString "user=\"ReplaceMe\"" "user=\"$UNAME\"" "/etc/init.d/$APPINITD"
ReplaceString "group=\"ReplaceMe\"" "group=\"$UGROUP\"" "/etc/init.d/$APPINITD"
ReplaceString "path=/home/UNAME" "path=/home/$UNAME" "/etc/init.d/$APPINITD"
