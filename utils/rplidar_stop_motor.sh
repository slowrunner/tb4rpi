#!/bin/bash

echo -e "\n*** RPLIDAR STOP MOTOR ***"

echo "ros2 service call stop_motor std_srvs/srv/Empty"
ros2 service call stop_motor std_srvs/srv/Empty



