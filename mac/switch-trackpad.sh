#!/bin/sh
export PATH=$PATH:/usr/local/bin/
device="18-7e-b9-69-ff-cd"
max_attempts=10

if [ $(blueutil --is-connected "$device") = "1" ]; then
	echo "Connected. Attempting to disconnect..."
        blueutil --disconnect "$device"
        blueutil --unpair "$device"
else
        echo "Disconnected. Attempting to connect..."
        blueutil --unpair "$device"
        for i in $(seq 1 $max_attempts); do
                echo "Pairing attempt $i of $max_attempts..."
                blueutil --pair "$device" 2>/dev/null & sleep 3
                if kill -0 $! 2>/dev/null; then
                        kill $!
                        wait $! 2>/dev/null
                else
                        echo "Pairing succesful."
                        break
                fi
        done
        blueutil --connect "$device"
fi
