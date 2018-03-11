#!/bin/bash
# Script Name: AtoMiC Deluge Repo config Script

CODENAME=$(lsb_release -c -s)

case "$CODENAME" in
    'squeeze'|'sid')
        APPREPOSITORYLINK=''
        ;;
    'wheezy')
        TEMPDIST='precise'
        ;;
    'jessie')
        TEMPDIST='trusty'
        ;;
    'stretch')
        TEMPDIST='xenial'
        ;;
    *)
        REPOPPA='YES'
        APPREPOSITORYLINK='ppa:deluge-team/ppa'
        ;;
esac

if [[ -n $APPREPOSITORYLINK || -n $TEMPDIST ]]; then
    REPRECVKEYSHORT='249AD24C'
fi

if [[ -n $TEMPDIST ]]; then
    APPREPOSITORYLINK="deb http://ppa.launchpad.net/deluge-team/ppa/ubuntu $TEMPDIST main"
    REPOKEYSREQ='YES'
    REPKEYSERVER='http://keyserver.ubuntu.com:11371'
    REPRECVKEYS='0x8eed8fb4a8e6da6dfdf0192bc5e6a5ed249ad24c'
fi
