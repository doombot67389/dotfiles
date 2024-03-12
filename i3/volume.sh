#!/bin/env bash


VOL=$(pactl list sinks | sed -n '95p' | awk '{print $5}')

#text
echo "$VOL"

# Goes Green
[ ${VOL%?} -lt 70 ] && echo '#00ff00'

# Goes orange 
[ ${VOL%?} -ge 70 ] && echo '#ffa500'

#Goes red
[ ${VOL%?} -ge 100 ] && echo '#ff0000'

exit 0
