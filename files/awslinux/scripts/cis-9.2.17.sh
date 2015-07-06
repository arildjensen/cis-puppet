#!/bin/bash

function check_system {
  /bin/cat /etc/passwd | /bin/cut -f1 -d":" | /bin/sort -n | /usr/bin/uniq -c | \
  while read x ; do
    [ -z "${x}" ] && break
    set - $x
    if [ $1 -gt 1 ]; then
      uids=`/bin/gawk -F: '($1 == n) { print $3 }' n=$2 \
        /etc/passwd | /usr/bin/xargs`
      echo "Duplicate User Name ($2): ${uids}"
    fi
  done
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_9_2_17=pass"
else
  echo "cis_9_2_17=fail"
fi
