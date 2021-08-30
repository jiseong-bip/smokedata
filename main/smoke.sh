#! /bin/bash
# /etc/init.d/smoke
#
#  Rev 1.1 7-26-2018
#

### BEGIN INIT INFO
# Provides: SDMS
# Required-Start:
# Required-Stop:
# Default-Start: 2 3 4 5
# Default-Stop:  0 1 6
# Short-Description: run snort.
# Rev. 1/23/2015 11:30 AM
# Short-Description: SDMS logger
# Description: start up script for SDMS logger
### END INIT INFO


case "$1" in
  start)
    echo "Start smoke.sh"
    stty -F /dev/serial0 raw 9600 cs8 clocal -cstopb
    nohup /usr/local/bin/smokemain >/dev/null 2>&1 &
    ;;

  stop)
    echo "Stopping sdms.sh"
    ;;
  *)
    echo "Usage: /etc/init.d/smoke {start|stop}"
    exit 1
    ;;
esac

exit 0

