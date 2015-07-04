#!/bin/bash

function check_path {
  for dir in `/bin/cat /etc/passwd | /bin/egrep -v '(root|sync|halt|shutdown)' | \
    /bin/awk -F: '($7 != "/sbin/nologin") { print $6 }'`; do
    for file in $dir/.rhosts; do
      if [ ! -h "$file" -a -f "$file" ]; then
        echo ".rhosts file in $dir"
      fi
    done
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_10=pass"
else
  echo "cis_9_2_10=fail"
fi
