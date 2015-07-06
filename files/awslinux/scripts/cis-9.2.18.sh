#!/bin/bash

function check_system {
  /bin/cat /etc/group | /bin/cut -f1 -d":" | /bin/sort -n | /usr/bin/uniq -c |\
  while read x ; do
    [ -z "${x}" ] && break
    set - $x
    if [ $1 -gt 1 ]; then
      gids=`/bin/gawk -F: '($1 == n) { print $3 }' n=$2 \
        /etc/group | /usr/bin/xargs`
      echo "Duplicate Group Name ($2): ${gids}"
    fi
  done
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_9_2_18=pass"
else
  echo "cis_9_2_18=fail"
fi
