#!/bin/bash
# Script Name: AtoMiC Glances init.d update

echo 'Updating init.d file'

ReplaceString "user=\"ReplaceMe\"" "user=\"$UNAME\"" "/etc/init.d/$APPINITD"
ReplaceString "group=\"ReplaceMe\"" "group=\"$UGROUP\"" "/etc/init.d/$APPINITD"
