#!/bin/bash

result=$(/bin/cat /etc/shadow | /bin/awk -F: '($2 == "" ) { print $1 " does not have a password "}')

if [[ -z $result ]]
then
  echo "cis_9_2_1=pass"
else
  echo "cis_9_2_1=fail"
fi
