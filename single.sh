#!/bin/sh
CURTIME=$(date "+%H:%M:%S")
CURDATE=$(date "+%Y-%m-%d")

if [ ! -f /home/ameki/dev/speedtest-cli-5min-24hr/output-$CURDATE.csv ]; then
  echo -n "Time," >> /home/ameki/dev/speedtest-cli-5min-24hr/output-$CURDATE.csv
  /home/ameki/.local/bin/speedtest-cli --csv-header >> /home/ameki/dev/speedtest-cli-5min-24hr/output-$CURDATE.csv
fi

echo -n "$CURTIME," >> /home/ameki/dev/speedtest-cli-5min-24hr/output-$CURDATE.csv
/home/ameki/.local/bin/speedtest-cli --csv >> /home/ameki/dev/speedtest-cli-5min-24hr/output-$CURDATE.csv
