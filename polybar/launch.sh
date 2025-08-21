#!/bin/bash


# Убиваем все существующие процессы polybar
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=${monitors[0]} polybar -c ~/.config/polybar/colorblocks/config.ini main &
MONITOR=${monitors[1]} polybar -c ~/.config/polybar/grayblocks/config.ini second &
