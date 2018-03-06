#!/bin/bash

APPNAME='deluged'
APPSHORTNAME='deluge'
APPPATH="/home/$UNAME/.config/deluge"
APPTITLE='Deluge'
APPDEPS='deluge-web'
APPDPORT='8112'
APPSETTINGS="$APPPATH/core.conf"
APPREPOSITORYNAME='deluge-team'
PORTSEARCH='"port": '
APPDEFAULTPASS='deluge'
APPSYSTEMD='deluged.service'
APPSYSTEMD2='deluge-web.service'
APPSYSTEMDLOC="$SCRIPTPATH/$APPNAME/deluged.service"
APPSYSTEMDLOC2="$SCRIPTPATH/$APPNAME/deluge-web.service"
APPINITD='deluged'
APPINITDLOC="$SCRIPTPATH/$APPNAME/deluged.init"
APPDEFAULTLOC="$SCRIPTPATH/$APPNAME/deluged.default"
NGINXCONFNAME='deluge'
PROXYREQSUFFIX='NO'
