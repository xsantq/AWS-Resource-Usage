# aws-resource-usage
This script is developed for to check AWS resource usage.

Further usage scenario is integrating this script with crontab
- Place the script desired locaton on server/workstation etc.
- Give executable permissions( chmod +x aws-resource-usage.sh)
- Type <crontab -e> in terminal
- 0 0 * * * /full/path/to/script/aws-resource-usage.sh
  (i.e: runs every midnight)
- save and exit.
- Output is located at the same path as aws-usage-report.log
