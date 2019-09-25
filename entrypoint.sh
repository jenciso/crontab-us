#!/bin/sh
set -e

for i in "$@"
do
   echo "$i" >> /tmp/jobs.txt
done

echo "Runing crontab service ..."

cat /tmp/jobs.txt | crontab - && crond -f -l 9 -L /dev/stdout
