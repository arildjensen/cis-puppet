#!/bin/bash

function check_path {
  /bin/cat /etc/passwd | /bin/cut -f3 -d":" | /bin/sort -n | /usr/bin/uniq -c | \
  while read x ; do
    [ -z "${x}" ] && break
    set - $x
    if [ $1 -gt 1 ]; then
      users=`/bin/gawk -F: '($3 == n) { print $1 }' n=$2 \
      /etc/passwd | /usr/bin/xargs`
      echo "Duplicate UID ($2): ${users}"
    fi
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_14=pass"
else
  echo "cis_9_2_14=fail"
fi
