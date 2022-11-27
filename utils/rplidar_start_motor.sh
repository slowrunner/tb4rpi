#!/bin/bash

echo -e "\n*** RPLIDAR START MOTOR ***"

echo "ros2 service call start_motor std_srvs/srv/Empty"
ros2 service call start_motor std_srvs/srv/Empty



