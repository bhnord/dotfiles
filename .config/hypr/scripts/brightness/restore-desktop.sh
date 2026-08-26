#!/bin/bash
[ -f /tmp/br1 ] && ddcutil --display 1 setvcp 10 "$(cat /tmp/br1)"
[ -f /tmp/br2 ] && ddcutil --display 2 setvcp 10 "$(cat /tmp/br2)"
