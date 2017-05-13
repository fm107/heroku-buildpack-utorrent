#!/bin/bash

mkdir -p /app/utorrent-server/incoming/incomplete
mkdir -p /app/utorrent-server/incoming/complete
mkdir -p /app/utorrent-server/incomplete/temp
mkdir -p /app/utorrent-server/incoming/torrents
mkdir -p /app/utorrent-server/autoload

cd /app/utorrent-server/ && ./utserver -settingspath utserver.conf -logfile /app/heroku_output/wwwroot/uploads/log.txt -daemon
