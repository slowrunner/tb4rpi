#!/bin/bash

echo -e "\n*** Send Create3 Navigate Action To Ready Position In Front Of Dock"
echo '*** ros2 action send_goal /navigate_to_position irobot_create_msgs/action/NavigateToPosition "{achieve_goal_heading: true,goal_pose:{pose:{position:{x: 0.25,y: 0.0,z: 0.0}, orientation:{x: 0.0,y: 0.0, z: 0.0, w: 1.0}}}}"
# Note: takes a goal position (in meters) and orientation (in radians). The orientation must be specified as part of the message, but it can be ignored by setting achieve_goal_heading to false.
ros2 action send_goal /navigate_to_position irobot_create_msgs/action/NavigateToPosition "{achieve_goal_heading: true,goal_pose:{pose:{position:{x: 0.25, y: 0.0, z: 0.0}, orientation:{x: 0.0, y: 0.0, z: 0.0, w: 1.0}}}}"
