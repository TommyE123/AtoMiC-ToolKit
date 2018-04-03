#!/bin/bash
# Script Name: AtoMiC Batch Application Update

source "$SCRIPTPATH/setup.sh" -b couchpotato
source "$SCRIPTPATH/setup.sh" -b deluged
source "$SCRIPTPATH/setup.sh" -b emby-server
source "$SCRIPTPATH/setup.sh" -b glances
source "$SCRIPTPATH/setup.sh" -b grafana
source "$SCRIPTPATH/setup.sh" -b headphones
source "$SCRIPTPATH/setup.sh" -b htpcmanager
source "$SCRIPTPATH/setup.sh" -b jackett
source "$SCRIPTPATH/setup.sh" -b kodi
source "$SCRIPTPATH/setup.sh" -b lazylibrarian
source "$SCRIPTPATH/setup.sh" -b madsonic
source "$SCRIPTPATH/setup.sh" -b medusa
source "$SCRIPTPATH/setup.sh" -b muximux
source "$SCRIPTPATH/setup.sh" -b mylar
source "$SCRIPTPATH/setup.sh" -b netdata
# source "$SCRIPTPATH/setup.sh" -b nzbget
source "$SCRIPTPATH/setup.sh" -b nzbhydra
source "$SCRIPTPATH/setup.sh" -b ombi
source "$SCRIPTPATH/setup.sh" -b organizr
source "$SCRIPTPATH/setup.sh" -b phpsysinfo
source "$SCRIPTPATH/setup.sh" -b plexmediaserver
source "$SCRIPTPATH/setup.sh" -b pyload
source "$SCRIPTPATH/setup.sh" -b qbittorrent-nox
source "$SCRIPTPATH/setup.sh" -b radarr
source "$SCRIPTPATH/setup.sh" -b rclone
source "$SCRIPTPATH/setup.sh" -b rclone-browser
source "$SCRIPTPATH/setup.sh" -b resilio-sync
source "$SCRIPTPATH/setup.sh" -b rtorrent
source "$SCRIPTPATH/setup.sh" -b rutorrent
source "$SCRIPTPATH/setup.sh" -b sabnzbdplus
source "$SCRIPTPATH/setup.sh" -b sickgear
source "$SCRIPTPATH/setup.sh" -b sickrage
source "$SCRIPTPATH/setup.sh" -b sonarr
source "$SCRIPTPATH/setup.sh" -b subsonic
source "$SCRIPTPATH/setup.sh" -b syncthing
source "$SCRIPTPATH/setup.sh" -b tautulli
source "$SCRIPTPATH/setup.sh" -b transmission-daemon
source "$SCRIPTPATH/setup.sh" -b ubooquity
source "$SCRIPTPATH/setup.sh" -b watcher
source "$SCRIPTPATH/setup.sh" -b webmin
ARGS=''
CI=''
source "$SCRIPTPATH/inc/thankyou.sh"
