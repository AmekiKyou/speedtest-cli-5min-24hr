# speedtest-cli-5min-24hr

This is a bash script tool to use [speedtest-cli](https://github.com/sivel/speedtest-cli) and monitor the network speed periodically and export to a daily-wise csv file.

# How to use

1. Follow the instructions of [speedtest-cli](https://github.com/sivel/speedtest-cli) to install this script.

2. Edit `single.sh`:

* Change all `/home/ameki/.local/bin/speedtest-cli` to the route you install the speedtest-cli script.
You can confirm this information through:
```
which speedtest-cli
```

* Replace all `/home/ameki/dev/speedtest-cli-5min-24hr/` to your desired output file folder.

3. Add a crontab, e.g., to run this script every 5 minutes

```
crontab -e
```

then, at the bottom of the file append this:

```
*/5 * * * * [Your path to this script]/single.sh
```

4. Make sure cron is running
```
sudo service cron start
```
