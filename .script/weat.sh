#! /bin/bash
# wx_nyc.sh
curl --silent "http://weather.yahooapis.com/forecastrss?w=714186&u=c" | awk -F '- '  ' /<title>/ { sub("</title>", "", $2) && l=$2 } /<b>Forecast/ { getline; gsub("<.*", "", $2); printf("%s: %s\n", l, $2); exit }'
