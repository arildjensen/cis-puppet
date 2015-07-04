#!/bin/bash

function check_system {
  for dir in `/bin/cat /etc/passwd |\
      /bin/awk -F: '{ print $6 }'`; do
    if [ ! -h "$dir/.forward" -a -f "$dir/.forward" ]; then
      echo ".forward file $dir/.forward exists"
    fi
  done
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_9_2_20=pass"
else
  echo "cis_9_2_20=fail"
fi
