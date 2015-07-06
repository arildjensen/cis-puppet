#!/bin/bash

function check_system {

  # CIS 5.2.12 - audit command
  # /bin/find / -xdev \( -perm -4000 -o -perm -2000 \) -type f | /bin/awk '{print \
  #   "-a always,exit -F path=" $1 " -F perm=x -F auid>=500 -F auid!=4294967295 \
  #   -k privileged" }'

  /bin/find / -xdev \( -perm -4000 -o -perm -2000 \) -type f | while read line
  do
    /bin/grep -P "${line}.+privileged" /etc/audit/audit.rules >/dev/null

    if [[ $? -ne 0 ]]
    then
      echo $line
      break
    fi
  done

}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_5_2_12=pass"
else
  echo "cis_5_2_12=fail"
fi
