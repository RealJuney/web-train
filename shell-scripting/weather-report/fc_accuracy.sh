#! /bin/bash

yesterday_fc=$(tail -2 rx_poc.log | head -1 | cut -f5)
echo "yesterday_fc: $yesterday_fc"

today_temp=$(tail -1 rx_poc.log | cut -f4)
echo "today_temp: $today_temp"

accuracy=$(($yesterday_fc-$today_temp))
echo "accuracy: $accuracy"

if [ -1 -le $accuracy ] && [ $accuracy -le +1 ]
then
    accuracy_range="Excellent"
else
    accuracy_range="Bad"
fi

echo $accuracy_range

row=$(tail -1 rx_poc.log)
year=$(echo $row | cut -d " " -f1)
month=$(echo $row | cut -d " " -f2)
day=$(echo $row | cut -d " " -f3)
echo -e "$year\t$month\t$day\t$today_temp\t$yesterday_fc\t$accuracy\t$accuracy_range" >> historical_fc_accuracy.tsv