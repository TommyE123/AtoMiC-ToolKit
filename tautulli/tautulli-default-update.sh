#!/bin/bash
# Script Name: AtoMiC Tautulli default update

#$HP_USER, username to run Tautulli under, the default is Tautulli
sudo sed -i "s@HP_USER=@HP_USER=$UNAME@g" /etc/default/$APPNAME || { echo -e $RED'Replacing HP_USER failed.'$ENDCOLOR ; exit 1; }

# #$APP_PATH, the location of Tautulli.py, the default is /opt/Tautulli
# sudo sed -i "s@HP_HOME=@HP_HOME=$APPPATH@g" /etc/default/$APPNAME || { echo -e $RED'Replacing HP_HOME failed.'$ENDCOLOR ; exit 1; }
# #$HP_DATA, the location of Tautulli.db, cache, logs, the default is /opt/Tautulli
# sudo sed -i "s@HP_DATA=@HP_DATA=$APPPATH/data@g" /etc/default/$APPNAME || { echo -e $RED'Replacing HP_DATA failed.'$ENDCOLOR ; exit 1; }
