#!/bin/bash
#installing prerequisite packages assuming user has sudo 
echo "[SCRIPT] Installing prerequisites for kernel."
sudo apt install raspberrypi-kernel-headers build-essential bc git wget bison flex libssl-dev make
