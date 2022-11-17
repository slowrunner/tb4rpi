#!/bin/bash

# used by cron to start logging "still alive" entries to life.log

nohup /home/ubuntu/tb4rpi/plib/loglife.py  >/dev/null 2>&1 &
