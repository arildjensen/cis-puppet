#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

RESULT='pass'

for i in `awk -F: '($3>499) {print $1}' /etc/passwd`; do
  for j in `egrep ^$i: /etc/passwd | awk -F: '{print $6}'`; do
    if [ ! `stat -c %U $j 2>/dev/null` = "$i" ]; then
      RESULT='fail';
    fi;
  done;
done;

echo $RESULT
