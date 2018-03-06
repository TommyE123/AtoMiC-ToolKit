#!/bin/bash

APPNAME='sickgear'
APPSHORTNAME='sg'
APPPATH='/opt/sickgear'
APPTITLE='SickGear'
APPPYTHONVERREQ='2.7.9'
APPDEPS='libsqlite3-dev libbz2-dev libreadline-dev zlib1g-dev'
APPGIT='https://github.com/SickGear/SickGear.git'
APPDPORT='8081'
APPSETTINGS=$APPPATH'/data/config.ini'
ACCESSHOST='web_host = '
PORTSEARCH='web_port = '
USERSEARCH='web_username = '
PASSSEARCH='web_password = '
# New password encrypted
NEWPASS='atomic'
# New password unencrypted
APPNEWPASS='atomic'
APPSYSTEMD='sickgear.service'
APPSYSTEMDLOC=$APPPATH'/init-scripts/init.systemd'
APPINITD='sickgear'
APPINITDLOC=$APPPATH'/init-scripts/init.ubuntu'
APPDEFAULTLOC=$SCRIPTPATH'/sickgear/sickgear.default'
