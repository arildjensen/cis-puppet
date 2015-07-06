#!/bin/bash

function check_path {
  /bin/cat /etc/passwd | /bin/awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do
    if [ $uid -ge 1000 -a -d "$dir" -a $user != "nfsnobody" ]; then
      owner=$(/usr/bin/stat -L -c "%U" "$dir")
      if [ "$owner" != "$user" ]; then
        echo "The home directory ($dir) of user $user is owned by $owner."
      fi
    fi
  done
}

result=$(check_path)

if [[ -z $result ]]
then
  echo "cis_9_2_13=pass"
else
  echo "cis_9_2_13=fail"
fi
