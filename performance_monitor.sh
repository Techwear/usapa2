#!/bin/bash
#Get information about the performance of my pi while compling kernel

#Version
echo "[SCRIPT] Writing version of VideoCore firmware to file" 
vcgencmd version >> kernel_performance_data 
echo " "

#Temperature of Pi
echo "[SCRIPT] Writing temperature of Pi to file"
vcgencmd measure_temp >> kernel_performance_data
