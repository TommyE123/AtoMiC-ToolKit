#!/bin/bash
# Script Name: AtoMiC Radarr Installer

echo
echo -e $YELLOW'--->Latest File Found...'$ENDCOLOR
OUTPUT="$(curl -s https://api.github.com/repos/radarr/radarr/releases | \
grep browser_download_url | \
grep linux.tar.gz | \
head -n 1 | \
cut -d '"' -f 4)"
echo "${OUTPUT}"
echo
echo -e $YELLOW'--->Downloading and extracting files...'$ENDCOLOR
sudo curl -L "${OUTPUT}" | tar -xzf - -C $APPPATH --strip-components=1
