#! /bin/bash

city="Casablanca"

#
obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 "°" | grep -Eo -e "-?[0-9]+" | head -1)
echo "obs_temp: ${obs_temp}"

fc_temp=$(curl -s wttr.in/$city?T | grep -m 2 "Noon" -A 5 | tail -5 | grep "°" | grep -Eo -e "-?[0-9]+" | head -2 | tail -1) 
echo "fc_temp: ${fc_temp}"

#Assign Country and City to variable TZ
TZ='Morocco/Casablanca'
# Use command substitution to store the current day, month, and year in corresponding shell variables:
hour=$(TZ='Morocco/Casablanca' date -u +%H) 
day=$(TZ='Morocco/Casablanca' date -u +%d) 
month=$(TZ='Morocco/Casablanca' date -u +%m)
year=$(TZ='Morocco/Casablanca' date -u +%Y)

record="$year\t$month\t$day\t$obs_temp\t$fc_temp"
echo -e $record >> rx_poc.log