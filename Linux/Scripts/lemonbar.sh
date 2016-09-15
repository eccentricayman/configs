#!/bin/bash

spacing="   "
function jsonValue() {
    KEY=$1
    num=$2
    awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/'$KEY'\042/){print $(i+1)}}}' | tr -d '"' | sed -n ${num}p
}

workspaces () {
    currentws=$(i3-msg -t get_workspaces | jq -r 'map(select(.focused))[0].num')
    totalws=$(i3-msg -t get_workspaces | jq -r 'map(.num)' | tail -n2 | head -1)
    wsstring=""
    case $currentws in
	1)
	echo -e "%{F"#DCDFB9"}${spacing}1 ${spacing}%{F}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	2) 
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{F"#DCDFB9"}${spacing}2 ${spacing}%{F}%{A:i3-msg workspace 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	3)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{F"#DCDFB9"}${spacing}3 ${spacing}%{F}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	4)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace 3:}${spacing}3 ${spacing}%{A}%{F"#DCDFB9"}${spacing}4 ${spacing}%{F}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	5)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{F"#DCDFB9"}${spacing}5 ${spacing}%{F}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	6)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{F"#DCDFB9"}${spacing}6 ${spacing}%{F}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	7)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg workspace 6:}${spacing}6 ${spacing}%{A}%{F"#DCDFB9"}${spacing}7 ${spacing}%{F}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	8)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg${spacing}${spacing}  workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{F"#DCDFB9"}${spacing}8 ${spacing}%{F}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	9)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg${spacing}${spacing}  workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{F"#DCDFB9"}${spacing}9 ${spacing}%{F}%{A:i3-msg workspace 10:}${spacing}10 ${spacing}%{A}"
	;;
	10)
	echo "%{A:i3-msg workspace 1:}${spacing}1 ${spacing}%{A}%{A:i3-msg workspace 2:}${spacing}2 ${spacing}%{A}%{A:i3-msg workspace${spacing} 3:}${spacing}3 ${spacing}%{A}%{A:i3-msg workspace 4:}${spacing}4 ${spacing}%{A}%{A:i3-msg workspace 5:}${spacing}5 ${spacing}%{A}%{A:i3-msg${spacing}${spacing}  workspace 6:}${spacing}6 ${spacing}%{A}%{A:i3-msg workspace 7:}${spacing}7 ${spacing}%{A}%{A:i3-msg workspace 8:}${spacing}8 ${spacing}%{A}%{A:i3-msg workspace 9:}${spacing}9 ${spacing}%{A}%{F"#DCDFB9"}${spacing}10 ${spacing}%{F}"
	;;
    esac
}

gettime () {
    hour=$(date '+%H:%M')
    echo "${spacing}  ${hour}${spacing}"
}

getbattery () {
    percentage=$(cat /sys/class/power_supply/BAT0/capacity)
    specialspacing="  "
    if [ "$percentage" -ge 87 ]
    then
        indicator=""
	percentage="${percentage}%"
    elif [ "$percentage" -ge 62 ]
    then
        indicator=""
	percentage="${percentage}%" 
    elif [ "$percentage" -ge 37 ]
    then
        indicator=""
	percentage="${percentage}%" 
    elif [ "$percentage" -ge 12 ]
    then
        indicator=""
	percentage="${percentage}%" 
    else
        indicator=""
	percentage="${percentage}%" 
    fi

    if [ "$(cat /sys/class/power_supply/BAT0/status)" = "Charging" ] || [ "$(cat /sys/class/power_supply/BAT0/status)" = "Full" ]
    then
	indicator=""
	percentage=""
        spacing=""
	specialspacing=""
    fi
    echo "${spacing}$indicator${specialspacing}$percentage${spacing}"
}

networkstatus () {
    if [ $(nmcli --fields STATE -t d | head -1) = "connected" ]
    then
        echo "${spacing}  Connected${spacing}"
    else
        echo "${spacing}  No Connection${spacing}"
    fi
}

cpu_temperature () {
    temperature=$(sensors | tail -6 | head -1 | awk -F+ '{ print $2 }' | awk -F° '{ print $1 }' | awk -F. '{ print $1 }')
    if [ ${temperature} -gt 75 ]; then
        echo "${spacing}  ${temperature}°C${spacing}"
    else
        echo ""
    fi
}

updates () {
    number=$(yaourt -Qua | wc -l)
        case $number in  
            0)
            echo "";;
            1)
            echo "${spacing}  ${number} Update${spacing}";;
            *)
            echo "${spacing}  ${number} Updates${spacing}";;
esac
}

diskspace () {
    usage=$(df -h | grep /dev/sda1 | awk -F' ' '{ print $5 }' | awk -F% '{ print $1 }')
    if [ ${usage} -gt 50 ]; then
        echo "${spacing}  ${usage}%${spacing}"
    else
	echo ""
    fi
}

volume () {
    state=$(amixer get Master | grep "Front Left: " | awk -F'[' '{print $3}' | awk -F ']' '{print $1}')
    volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed   -e 's,.* \([0-9][0-9]*\)%.*,\1,' | awk -F" " '{ print $1 }')
    if [ ${state} == 'on' ]; then
	if [ "${volume}" -eq 0 ]; then
		echo "${spacing}  ${volume}%${spacing}"
	elif [ "${volume}" -gt 0 ] && [ "${volume}" -lt 50 ]; then
		echo "${spacing}  ${volume}%${spacing}"
	else
		echo "${spacing}  ${volume}%${spacing}"
	fi
    else
	echo "${spacing}  ${volume}%${spacing}"
    fi
}

weatherBrussels () {
    temperature=$(curl -s -4 http://wttr.in/Jamaica | head -n 4 | tail -n 1 | awk -F' ' '{ print $5$6$7$8 }' | sed 's/\x1b\[[0-9;]*m//g')
    temperatureMax=$(curl -s -4 http://wttr.in/Jamaica | head -n 4 | tail -n 1 | awk -F' ' '{ print $5 }' | sed 's/\x1b\[[0-9;]*m//g')
    if [ "${temperatureMax}" -lt 18 ]; then
	echo "${spacing}  ${temperature}${spacing}"
    else
	echo "${spacing}  ${temperature}${spacing}"
    fi
}

while true; do
    echo "%{l}$(workspaces)%{r}$(updates)$(cpu_temperature)$(diskspace)$(volume)$(networkstatus)$(getbattery)$(gettime)%{r}"
    sleep 1
done
