
#!/bin/bash
#Variables
kernel_path=linux/

#Installing prerequisite packages, script user must run script with sudo so the script doesn't ask for a password
echo "[SCRIPT] Installing prerequisites for kernel."
sudo apt install raspberrypi-kernel-headers build-essential bc git wget bison flex libssl-dev make

#Clone the Linux kernel
echo "[SCRIPT] Cloning Linux kernel."
git clone --depth=1 https://github.com/raspberrypi/linux

#Get .config file from github and move it into linux folder
echo "[SCRIPT] Downloading .config file from github"
wget https://raw.githubusercontent.com/Techwear/usapa2/master/.config
echo "[SCRIPT] Moving .config into linux folder"
sudo cp .config linux/

#Move into linux folder and compile?

#Copy Files


#Reboot


