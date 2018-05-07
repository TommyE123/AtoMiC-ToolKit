#!/bin/bash
# Script Name: AtoMiC Github Release Installer

echo
echo -e "$YELLOW--->Latest File Found...$ENDCOLOR"

OUTPUT="$(curl -s "$APPDOWNLOADURL" | \
grep "$APPDOWNLOADEXT" | \
grep browser_download_url | \
head -n 1 | \
cut -d '"' -f 4)"

if [[ -z $OUTPUT ]]; then
    echo -e "${RED}URL NOT FOUND$ENDCOLOR"
    exit 1
fi

EXTENSION="${OUTPUT##*.}"
case $EXTENSION in
    "bz2" ) EXTRACTTYPE='xjf';;
    "gz")   EXTRACTTYPE="xzf";;
esac

echo "$OUTPUT"
echo
if [[ -n $EXTRACTTYPE ]]; then
    echo -e "$YELLOW--->Downloading and extracting files...$ENDCOLOR"
    curl -L "$OUTPUT" | sudo tar -$EXTRACTTYPE - -C "$APPPATH" "$APPDOWNLOADSTRIP"
else
    wget "$OUTPUT" -P '/var/cache/apt/archives'
    sudo dpkg -i "/var/cache/apt/archives/$(basename "$OUTPUT")"
fi
