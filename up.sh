#!/bin/bash
START=`grep Awake /var/log/pm-suspend.log|tail -n 1|sed -e 's/:\ .*$//g'`
START_S=`date -d "$START" +%s`
NOW=`date +%s`
DIFF=$(( NOW - START_S ))
DIFF_MAX=$(( 8,5 * 60 * 60 ))
PRETTY=`date -d@$DIFF -u +%H:%M:%S`

if [ ${DIFF} -gt ${DIFF_MAX} ] || [ -n "$1" ]; then
	notify-send "Time at work" "$PRETTY" -i /usr/share/icons/hicolor/scalable/apps/mate-panel-clock.svg
fi

