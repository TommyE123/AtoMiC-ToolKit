#!/bin/bash
# Script Name: AtoMiC OpenVPN Repo config Script

ARCH=$(uname -m)
ARCHSHORT=${ARCH:0:3}
if [[ ! $ARCHSHORT = 'arm' ]]; then
    CODENAME=$(lsb_release -c -s)
    case "$CODENAME" in
        'wheezy'|'jessie'|'stretch')
            TEMPDIST=$CODENAME
            ;;
        'precise'|'maya'|'betsy')
            TEMPDIST='precise'
            ;;
        'trusty'|'rosa'|'rafaela'|'rebecca'|'qiana')
            TEMPDIST='trusty'
            ;;
        'xenial'|'serena'|'sarah'|'sonya'|'sylvia'|'zesty'|'yakkety'|'artful')
            TEMPDIST='xenial'
            ;;
    esac
fi

if [[ ! -z $TEMPDIST ]]; then
    APPREPOSITORYLINK="deb http://build.openvpn.net/debian/openvpn/stable $TEMPDIST main"
    REPRECVKEYSASC="https://swupdate.openvpn.net/repos/repo-public.gpg"
    REPRECVKEYSHORT='E158C569'
    REPOPPA='NO'
    REPOKEYSREQ='YES'
else
    echo 'No repository found that supports your Linux Distribution'
fi
