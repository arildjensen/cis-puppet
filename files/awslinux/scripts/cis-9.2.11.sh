#!/bin/bash

function check_path {
  for i in $(cut -s -d: -f4 /etc/passwd | sort -u ); do
    grep -q -P "^.*?:x:$i:" /etc/group
    if [ $? -ne 0 ]; then
      echo "Group $i is referenced by /etc/passwd but does not exist in /etc/group"
    fi
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_11=pass"
else
  echo "cis_9_2_11=fail"
fi
