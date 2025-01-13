## Password Backup

### Problem
*Create a script file called* `backup.sh` which runs everyday that automatically backups password files that have been updated in the past 24 hours


### Solution

- see backup.sh
- copy backup.sh to `/usr/local/bin`
- sudo service cron start
- add backup.sh execution to crontab -e
- sudo service cron stop to stop cron