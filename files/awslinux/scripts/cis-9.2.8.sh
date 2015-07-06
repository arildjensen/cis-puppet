#!/bin/bash

function check_path {
  for dir in `/bin/cat /etc/passwd | /bin/egrep -v '(root|sync|halt|shutdown)' | \
    /bin/awk -F: '($7 != "/sbin/nologin") { print $6 }'`; do
    for file in $dir/.[A-Za-z0-9]*; do
      if [ ! -h "$file" -a -f "$file" ]; then
        fileperm=`/bin/ls -ld $file | /bin/cut -f1 -d" "`
        if [ `echo $fileperm | /bin/cut -c6 ` != "-" ]; then
          echo "Group Write permission set on file $file"
        fi
        if [ `echo $fileperm | /bin/cut -c9 ` != "-" ]; then
          echo "Other Write permission set on file $file"
        fi
      fi
    done
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_8=pass"
else
  echo "cis_9_2_8=fail"
fi
