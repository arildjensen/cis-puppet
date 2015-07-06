#!/bin/bash

function check_system {
  /bin/cat /etc/group | /bin/cut -f3 -d":" | /bin/sort -n | /usr/bin/uniq -c | \
  while read x ; do
    [ -z "${x}" ] && break
    set - $x
    if [ $1 -gt 1 ]; then
      grps=`/bin/gawk -F: '($3 == n) { print $1 }' n=$2 \
        /etc/group | xargs`
      echo "Duplicate GID ($2): ${grps}"
    fi
  done
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_9_2_15=pass"
else
  echo "cis_9_2_15=fail"
fi
