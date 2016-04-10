#!/bin/bash

PROGRAM="meh"
IP='192.168.0.16'
VPNIP='162.266.8.19'

ACTIVEIP=`hostname --ip-address`

if `pgrep $PROGRAM  > /dev/null` && `[ $IP == $ACTIVEIP ]`
then
	echo "activate vpn"
	echo $ACTIVEIP
elif `pgrep $PROGRAM == /dev/null` 
then
	echo "deactivate vpn"
	echo $ACTIVEIP
	echo $IP
else
	echo "do nothing"
fi
#&& `[ $VPNIP == $ACTIVEIP ]`
