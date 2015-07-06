#!/bin/bash

result=$(/bin/grep '^+:' /etc/shadow)

if [[ -z $result ]]
then
  echo "cis_9_2_3=pass"
else
  echo "cis_9_2_3=fail"
fi
