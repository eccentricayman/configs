
#!/bin/bash

if [ ${1} == 1 ]; then
	killall lemonbar
	~/Scripts/lemonbar.sh | lemonbar -g 1326x15+20+20 -B "#32426c" -F "#778bc0" -p -d -f FontAwesome-8 -f Hack-8
elif [ ${1} == 2 ]; then
	killall lemonbar
	~/Scripts/lemonbar.sh | lemonbar -g 1240x15+20+20 -B "#32426c" -F "#778bc0" -p -d -f FontAwesome-8 -f Hack-8
fi
