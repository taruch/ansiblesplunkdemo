#!/bin/bash
FOLDER_PATH=/var/log/
VOL_SIZE=17811456

PERCENT=$(df -l | grep root | awk '{print $5}')
PERCENT="${PERCENT//%}"
PERCENTREMAIN=$((100 - $PERCENT))

logger "$FOLDER_PATH remaining disk space is: $PERCENTREMAIN%"
