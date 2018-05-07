#!/bin/bash

APPNAME='emby-server'
APPSHORTNAME='emby'
APPPATH='/opt/emby-server'
APPSETTINGSDIR='/var/lib/emby'
APPTITLE='Emby'
APPDPORT='8096'
APPSETTINGS=$APPSETTINGSDIR'/config/system.xml'
APPREPOSITORYNAME='emby-server'
APPDOWNLOADURL='https://api.github.com/repos/MediaBrowser/Emby/releases'
REPOPPA='NO'
REPOKEYSREQ='YES'
REPRECVKEYSHORT='2A7D8A28'
USERSEARCH="NA"
PASSSEARCH='NA'
PORTSEARCH='  <PublicPort>'
APPSYSTEMD='emby-server.service'
APPSYSTEMDOVERIDE="$SCRIPTPATH/emby-server/emby-server-override.conf"
APPINITD='emby-server'
NGINXCONFNAME='emby'
