#!/bin/bash
#Get information about the performance of my pi while compling kernel
#Need to run this script before it compling on first script

#Version
echo "[SCRIPT] Writing version of VideoCore firmware to file" 
vcgencmd version >> kernel_performance_data 
echo " "
#Temperature of Pi
echo "[SCRIPT] Writing temperature of Pi to file"
vcgencmd measure_temp >> kernel_performance_data
echo " "
sleep 2
echo "[SCRIPT] Writing throttled state to file"
vcgencmd get_throttled  >> kernel_performance_data
echo " "
sleep 2
echo "[SCRIPT] Writing memory split between CPU and GPU"
vcgencmd get_mem arm >> kernel_performance_data
sleep 2
vcgencmd get_mem gpu >> kernel_performance_data
echo " "
echo "[SCRIPT] Writing CPU clock frequency to file"
sleep 2
vcgencmd measure_clock arm >> kernel_performance_data

#STOP SCRIPT WHEN USR1 SIGNAL IS RECIEVED BY SCRIPT 1
#If signal is recieved; close script
if ["" == ""]; 
then
echo "[SCRIPT] Closing performance monitoring script"
exit
fi
 
