#!/bin/bash

ls -a | grep .iso 
echo "Choose input file:"
read input 

echo ""
lsblk | grep disk
echo "Choose output device:"
echo "(Just sda, sdb or sdc etc.)"
read output

echo ""
echo "Burn $input to /dev/$output? (all data will be lost)[y/N]"

read sure
if [ $sure = y ] 
then
	echo "burning now"
	dd if=$input of=/dev/$output status=progress
else
	echo "aborting"
fi
