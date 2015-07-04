#!/bin/bash

function check_path {
  for dir in `/bin/cat /etc/passwd | /bin/egrep -v '(root|sync|halt|shutdown)' | \
    /bin/awk -F: '($7 != "/sbin/nologin") { print $6 }'`; do
    for file in $dir/.netrc; do
      if [ ! -h "$file" -a -f "$file" ]; then
        fileperm=`/bin/ls -ld $file | /bin/cut -f1 -d" "`
        if [ `echo $fileperm | /bin/cut -c5 ` != "-" ]
        then
          echo "Group Read set on $file"
        fi
        if [ `echo $fileperm | /bin/cut -c6 ` != "-" ]
        then
          echo "Group Write set on $file"
        fi
        if [ `echo $fileperm | /bin/cut -c7 ` != "-" ]
        then
          echo "Group Execute set on $file"
        fi
        if [ `echo $fileperm | /bin/cut -c8 ` != "-" ]
        then
          echo "Other Read set on $file"
        fi
        if [ `echo $fileperm | /bin/cut -c9 ` != "-" ]
        then
          echo "Other Write set on $file"
        fi
        if [ `echo $fileperm | /bin/cut -c10 ` != "-" ]
        then
          echo "Other Execute set on $file"
        fi
      fi
    done
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_9=pass"
else
  echo "cis_9_2_9=fail"
fi
