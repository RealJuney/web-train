## Weather Report Lab

###  Problem

**Historical Weather Forecast Comparison to Actuals**

Task for creating *ETL*(Extract, Transform, Load) process to extract daily weather forecast and observed data and load it to a live report.
For each day, gather actual data and forecasted data for noon on the following day for Casablanca.

### Solution

1. Create rx_proc.log (all the logs for each)
2. rx_poc.sh
    - extract temp for actual temp and forecast for the following day
    - redirect output and append it to rx_poc.log
3. crontab -e
    - add to crontab such that rx_poc.sh is launched every noon (in Casablanca time)
4. create fc_accuracy.sh for calculating accuaracy and adding to .tsv file