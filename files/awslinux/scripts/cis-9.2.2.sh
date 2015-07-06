#!/bin/bash

result=$(/bin/grep '^+:' /etc/passwd)

if [[ -z $result ]]
then
  echo "cis_9_2_2=pass"
else
  echo "cis_9_2_2=fail"
fi
