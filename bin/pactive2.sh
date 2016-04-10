#!/bin/bash

#created by assistant to the regional dealer services manager

vpntoggle() {
#modify within the qoutes (type of quotation is important)
program="meh" #insert the name of the bittorrent program from ps -a
ip='127.0.0.2' #insert your normal ip 
vpnip='162.266.8.19' #insert your vpn ip

#this script should work as long as the command following command will return the vpn ip address when the vpn is turned on
	# hostname --ip-address

#don't touch this
activip=`hostname --ip-address`
torstat=" "

if `pgrep $program  > /dev/null` 
then
	torstat="active"
else
	torstat="inactive"
fi

if `[ $torstat == "active" ]` && `[ $ip == $activip ]`
then
	#deactivate normal network use nmcli con to find the name
	#nmcli con down id StandardConnectionName
	echo "activate vpn"
	#activate vpn
	#nmcli ocn up id VPNConnectionName
	echo $activip
elif [ $torstat == "inactive" ] && [ $vpnip == $activip ]
then
	#deactivate vpn network
	#nmcli con down id VPNConnectionName
	#activate normal network
	#nmcli con up id StandardConnectionName
	echo "deactivate vpn"
	echo $activip
	echo $ip
else
	echo "no action needed"
fi
}

while :; do
	vpntoggle
	sleep 1
done

