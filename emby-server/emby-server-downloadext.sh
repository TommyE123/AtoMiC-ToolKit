#!/bin/bash
# Script Name: AtoMiC Emby Download Get Extension

echo
ARCH=$(uname -m)
ARCHSHORT=${ARCH:0:3}
if [[ $ARCHSHORT = 'arm' ]]; then
    APPDOWNLOADEXT='armhf.deb'
else
    APPDOWNLOADEXT='amd64.deb'
fi
