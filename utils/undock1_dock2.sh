#!/bin/bash


while true; do uptime; ~/tb4rpi/utils/c3_action_undock.sh; ~/tb4rpi/plib/logmaintenance.py "Undocking: success"; sleep 5400; uptime; ~/tb4rpi/utils/c3_action_rotate_180.sh; uptime; ~/tb4rpi/utils/c3_action_dock.sh; ~/tb4rpi/plib/logmaintenance.py "Docking: success"; sleep 7200; done
