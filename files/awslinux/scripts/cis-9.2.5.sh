#!/bin/bash

result=$(/bin/cat /etc/passwd | /bin/awk -F: '($3 == 0) { print $1 }' | /bin/grep -v root)

if [[ $? -ne 0 ]]
then
  echo "cis_9_2_5=pass"
else
  echo "cis_9_2_5=fail"
fi
