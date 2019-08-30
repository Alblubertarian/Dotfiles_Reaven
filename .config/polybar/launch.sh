#!/usr/bin/env bash

#First terminate all the bar instances
killall -q polybar

#Then wait until processes shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Now we launch the bar
polybar raven

echo "Bars initializing"
