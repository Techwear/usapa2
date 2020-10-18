#!/bin/bash
#Get information about the performance of my pi while compling kernel

#Version
echo "[SCRIPT] Version of VideoCore firmware" 
vcgencmd version
echo " "

#Temperature of Pi
echo "[SCRIPT] Temperature of Pi"
vcgencmd measure_temp
