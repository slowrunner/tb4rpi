#!/bin/bash
#
# totallife.sh    print total hours and sessions of life in life.log
#
# requires bc  (sudo apt-get install bc)
#
echo "(Cleaning life.log first)"
/home/ubuntu/tb4rpi/plib/cleanlifelog.py -p
/home/ubuntu/tb4rpi/plib/cleanlifelog.py
echo " "
fn="/home/ubuntu/tb4rpi/life.log"
totalLife=`(awk -F':' '{sum+=$3}END{print sum;}' $fn)`
echo -e "\n\n*** TOTAL WaLI Turtlebot 4 Lite LIFE STATISTICS ***"
echo "Total Life: " $totalLife "hrs (since Nov 17, 2022)"
echo "Sessions (boot): " `(grep -c "\- boot \-" $fn)`
booted=`(grep -c "\- boot \-" $fn)`
aveSession=`(echo "scale=1; ($totalLife / $booted)" | bc -l)`
echo "Average Session: " $aveSession "hrs"
DockingSuccessCnt=`(grep "Docking: success" $fn | wc -l)`
echo "Successful Dockings Logged: " $DockingSuccessCnt
