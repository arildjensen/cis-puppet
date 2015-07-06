#!/bin/bash

function check_system {
  /bin/egrep -v "^\+" /etc/passwd | /bin/awk -F: \
    '($1!="root" && $1!="sync" && $1!="shutdown" && $1!="halt" && $3<500 && $7!="/sbin/nologin") {print}'
}

result=$(check_system)

if [[ -z $result ]]
then
  echo "cis_7_2=pass"
else
  echo "cis_7_2=fail"
fi
