
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
echo "[SCRIPT] Checkout .config file from github"
wget https://raw.githubusercontent.com/Techwear/usapa2/master/.config
echo "[SCRIPT] Move .config to linux folder"
sudo cp .config linux/

#Compile and copy files
cd linux/
echo "[SCRIPT] Compiling kernel"
make -j4 zImage modules dtbs
echo "[SCRIPT] Copying files to final locations"
sudo make modules_install
sudo cp arch/arm/boot/dts/*.dtb /boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp arch/arm/boot/dts/overlays/README /boot/overlays/
sudo cp arch/arm/boot/zImage /boot/$KERNEL.img

#Reboot
echo "[SCRIPT] Rebooting Raspberry Pi"
sudo reboot

