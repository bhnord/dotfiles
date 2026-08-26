#!/bin/bash
val1=$(ddcutil --display 1 getvcp 10 | grep -oP 'current value\s*=\s*\K[0-9]+')
val2=$(ddcutil --display 2 getvcp 10 | grep -oP 'current value\s*=\s*\K[0-9]+')
[ -n "$val1" ] && echo "$val1" >/tmp/br1
[ -n "$val2" ] && echo "$val2" >/tmp/br2
ddcutil --display 1 setvcp 10 10
ddcutil --display 2 setvcp 10 10
