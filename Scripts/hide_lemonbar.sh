#!/bin/bash

if [ ${1} == 1 ]; then
	while true; do
		ACTIVEWINDOW=$(xdotool getactivewindow) 
		if [ $? -eq 0 ]; then
			WINDOW=$(echo $(xwininfo -id $ACTIVEWINDOW -stats | egrep '(Width|Height):' | awk '{print $NF}') | sed -e 's/ /x/')
		fi
    
		if [ "$WINDOW" == "1366x768" ]; then
			killall lemonbar
			while true; do
				ACTIVEWINDOW=$(xdotool getactivewindow)
				WINDOW=$(echo $(xwininfo -id $ACTIVEWINDOW -stats | egrep '(Width|Height):' | awk '{print $NF}') | sed -e 's/ /x/')
				if [ "$WINDOW" != "1366x768" ]; then
					/home/kelaun/Scripts/start_lemonbar.sh $1 &
					break
				fi
				sleep 1
			done
		fi
		sleep 1
	done
elif [ ${1} == 2 ]; then
	while true; do
		ACTIVEWINDOW=$(xdotool getactivewindow) 
		if [ $? -eq 0 ]; then
			WINDOW=$(echo $(xwininfo -id $ACTIVEWINDOW -stats | egrep '(Width|Height):' | awk '{print $NF}') | sed -e 's/ /x/')
		fi

		if [ "$WINDOW" == "1280x1024" ]; then
			killall lemonbar
			while true; do
				ACTIVEWINDOW=$(xdotool getactivewindow)
				WINDOW=$(echo $(xwininfo -id $ACTIVEWINDOW -stats | egrep '(Width|Height):' | awk '{print $NF}') | sed -e 's/ /x/')
				if [ "$WINDOW" != "1280x1024" ]; then
					/home/kelaun/Scripts/start_lemonbar.sh $1 &
					break
				fi
				sleep 1
			done
		fi
		sleep 1
	done
fi
