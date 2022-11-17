#!/bin/bash


while true; do echo -e "\n********** TB4lite RPi MONITOR **********************"; dt=`date +"%A %D"`; echo -n "$dt "; uptime; vcgencmd measure_temp && vcgencmd measure_clock arm && vcgencmd get_throttled; free -h; echo -e "TBD: Battery State"; sleep 10; echo -e "\n"; done
