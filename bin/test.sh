#!/bin/bash

if [ "$1" = "-set" ]
	then
		sudo tee /sys/class/backlight/intel_backlight/brightness <<< $2	
	elif ["$1" = "-h"]
		echo 'use -set to set screen value'
	elif ["$1" = "-m"]
		$max = cat /sys/class/backlight/intel_backlight/max_brightness
		echo "Maximum screen brightness is $max"
	else
		cat /sys/class/backlight/intel_backlight/brightness	
fi



