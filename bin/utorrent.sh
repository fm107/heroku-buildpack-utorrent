#!/bin/bash

cd /app/utorrent-server/ && ./utserver -configfile utserver.conf -logfile /app/heroku_output/wwwroot/uploads/log.txt -daemon
