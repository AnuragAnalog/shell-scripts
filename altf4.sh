#!/bin/bash
#This script is used to poweroff,restart,logoff.
if [ $# -ne 0 ]
then 
	echo "Syntax: altf4.sh"
	exit 1
fi

echo "The Modes are: " 
echo "	  1.Poweroff"
echo "	  2.Reboot"
echo "	  3.Logoff"
echo "	  4.Suspend"

read -p "Select a Mode: " p
case $p
in 
	1)read -p "Are You Sure: 1.Yes 2.No " a
	if [ "$a" -eq 1 ]
	then
		poweroff
	else
		echo "Poweroff failed"
	fi;;
	2)read -p "Are You Sure: 1.Yes 2.No " b
	if [ "$b" -eq 1 ]
	then
		reboot
	else
		echo "reboot failed"
	fi;;
	3)read -p "Are You Sure: 1.Yes 2.No " c
	if [ "$c" -eq 1 ]
	then
		echo "plz..wait logging out" 
		sleep 5 ; kill -9 -1
	else
		echo "logoff failed"
	fi;;
	4)read -p "Are You Sure: 1.Yes 2.No " d
	if [ "$d" -eq 1 ]
	then
		systemctl suspend	
	else
		echo "Suspension failed"
	fi;;
	*)echo "Select a vaild Mode";;
esac
