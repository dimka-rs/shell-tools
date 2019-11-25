#!/bin/sh

# required co2mond
# https://github.com/dmage/co2mon.git

PORT=2003
SERVER=example.com

CO2MOND=${HOME}/repos/co2mon/build/co2mond/co2mond
if [ ! `pidof co2mond` ]; then
    [ ! -d /tmp/co2 ] && mkdir /tmp/co2
    $CO2MOND -d -D /tmp/co2
    sleep 10
fi

t=$(cat /tmp/co2/heartbeat)
tamb=$(cat /tmp/co2/Tamb)
cntr=$(cat /tmp/co2/CntR)

if [ -n "$t" -a -n "$tamb" ]; then
    echo "work.env.tamb $tamb $t" | nc -q0 ${SERVER} ${PORT}
fi

if [ -n "$t" -a -n "$cntr" ]; then
    echo "work.env.co2 $cntr $t" | nc -q0 ${SERVER} ${PORT}
fi

