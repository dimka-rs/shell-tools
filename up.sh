#!/bin/bash
ICON_FILE=/usr/share/icons/hicolor/scalable/apps/mate-panel-clock.svg
NOW_S=`date +%s`

# get start time suspend
#START=`grep Awake /var/log/pm-suspend.log|tail -n 1|sed -e 's/:\ .*$//g' 2>/dev/null`

# if none, try older log
#[ -z "$START" ] && START=`grep Awake /var/log/pm-suspend.log.1|tail -n 1|sed -e 's/:\ .*$//g'`

# if none, try hibernate
[ -z "$START" ] && START=`grep -a 'PM: hibernation exit' /var/log/kern.log| tail -n 1| awk '{print $3}'`

# if none, try uptime
if [ -z "$START" ]; then
	START_S=$(date +%s -d `uptime -s|awk '{print $2}'`)
else
	START_S=`date +%s -d $START 2>/dev/null`
fi


DIFF=$(( NOW_S - START_S ))
DIFF_WORK=30600	## 8.5*60*60
DIFF_MAX=86400	## 24*60*60

if [ "$DIFF" -gt "$DIFF_MAX" ]; then
	## if time is more than limit, try hibernaion log
	HIBER=`grep 'PM: hibernation exit' /var/log/kern.log 2>/dev/null`
	[ -z "$HIBER" ] && HIBER=`grep 'PM: hibernation exit' /var/log/kern.log.1`
	
	[ -n "$1" ] && notify-send "ERR" "Max time exceeded! \n$HIBER" -i $ICON_FILE
	exit 0
fi

LEFT=$(( DIFF_WORK - DIFF ))
if [ $LEFT -gt 0 ]; then
	LEFT_P=`date -d@$LEFT -u +%H:%M:%S`
	LEFT_S="$LEFT_P left"
else
	LEFT_S="Time to go home"
fi
	
if [ ${DIFF} -gt ${DIFF_WORK} ] || [ -n "$1" ]; then
	PRETTY=`date -d@$DIFF -u +%H:%M:%S`
	notify-send "${PRETTY} at work" "${LEFT_S}" -i $ICON_FILE
fi

