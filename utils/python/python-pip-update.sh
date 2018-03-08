#!/bin/bash
# Script Name: AtoMiC Python Pip update

echo
echo -e "${GREEN}AtoMiC Python Pip Packages Update Script$ENDCOLOR"

if [[ $1 = 'pip3' ]]; then
    APPNAME='python3-pip'
else
    APPNAME='python-pip'
fi

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $APPNAME | grep "install ok installed")
if [[ -z $PKG_OK ]]; then
    sudo apt-get -y install $APPNAME
fi

sudo -H $1 freeze --local | grep -v '^\e' | cut -d = -f 1 | xargs -n1 sudo -H $1 install -U

echo -e "${GREEN}---> $APPTITLE installation complete.$ENDCOLOR"
