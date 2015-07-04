#!/bin/bash

result=$(/bin/grep '^+:' /etc/group)

if [[ -z $result ]]
then
  echo "cis_9_2_4=pass"
else
  echo "cis_9_2_4=fail"
fi
