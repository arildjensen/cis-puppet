#!/bin/bash

function check_system {
  for dir in `/bin/cat /etc/passwd |\
      /bin/awk -F: '{ print $6 }'`; do
    if [ ! -h "$dir/.netrc" -a -f "$dir/.netrc" ]; then
      echo ".netrc file $dir/.netrc exists"
    fi
  done
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_9_2_19=pass"
else
  echo "cis_9_2_19=fail"
fi
