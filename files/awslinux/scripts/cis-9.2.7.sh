#!/bin/bash

function check_path {
  for dir in `/bin/cat /etc/passwd | /bin/egrep -v '(root|halt|sync|shutdown)' |\
    /bin/awk -F: '($7 != "/sbin/nologin") { print $6 }'`; do  # removed $8 == "PS" && 
    dirperm=`/bin/ls -ld $dir | /bin/cut -f1 -d" "`
    if [ `echo $dirperm | /bin/cut -c6 ` != "-" ]; then
      echo "Group Write permission set on directory $dir"
    fi
    if [ `echo $dirperm | /bin/cut -c8 ` != "-" ]; then
      echo "Other Read permission set on directory $dir"
    fi
    if [ `echo $dirperm | /bin/cut -c9 ` != "-" ]; then
      echo "Other Write permission set on directory $dir"
    fi
    if [ `echo $dirperm | /bin/cut -c10 ` != "-" ]; then
      echo "Other Execute permission set on directory $dir"
    fi
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_7=pass"
else
  echo "cis_9_2_7=fail"
fi
