#!/bin/bash


while true; do uptime; ~/tb4rpi/utils/c3_action_undock.sh; ~/tb4rpi/plib/logmaintenance.py "Undocking: success"; sleep 3600; ~/tb4rpi/utils/c3_action_rotate_180.sh; sleep 30; uptime; ~/tb4rpi/utils/c3_action_dock.sh; ~/tb4rpi/plib/logmaintenance.py "Docking: success"; sleep 7200; done
