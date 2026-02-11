# auto-update-fedora
A simple bash script to use as a cron job to auto update a fedora system

Start by either making a copy of the bash scripit in this repository, or making your own in /usr/local/bin folder
```bash
vim /usr/local/bin/auto-update.sh
```

Then, make a log file/update the log file so that you can see if the update script of successful within that bash script
```bash
#Log the update
echo "Updates completed on $(date)" >> /var/log/auto-update.log
```
(I added $(date) to tell which day it was done on, just in case if one does fail)

Next, enter your crontab file as a sudo user or create one as a sudo user
```bash
sudo crontab -e
```
and create the cron job! I am making my script run at everyday at 7am.
```bash
* 7 * * 0-6 /usr/local/bin/auto-update.sh
```

And you are done! If you want to see a screenshot of what the bash script looks like or what the log file looks like, refer to the pictures folder.
