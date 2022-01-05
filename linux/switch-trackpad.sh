#!/bin/bash
device="18:7E:B9:69:FF:CD"
timeout=10

if bluetoothctl info $device | grep -qi "connected: yes"; then
	echo "Connected. Attempting to disconnect..."
	bluetoothctl disconnect $device
	sleep 1
	bluetoothctl remove $device
else
	echo "Disconnected. Attempting to connect..."
	expect -c "
	set timeout $timeout
	spawn bluetoothctl
	send \"scan on\n\"
	expect \"$device\"
	send \"pair $device\n\"
	expect \"Pairing successful\"
	send \"connect $device\n\"
	expect \"Connection successful\"
	"
fi
