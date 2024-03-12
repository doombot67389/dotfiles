#!/usr/bin/env bash

CPU=$(sensors | gawk -F'[+,.?]' '/SYSTIN/{print $2}')

#display cpu temp
echo "CPU: $CPU°C"

# Flags
[ ${CPU} -gt 80 ] && echo "#ff0000"

exit 0
