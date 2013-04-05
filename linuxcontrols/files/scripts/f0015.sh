#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '($3>499 && $7!=/sbin/nologin) { print $6}' /etc/passwd`

RESULT="pass"

for i in $COMMAND; do
  if [ ! -d $i ]; then
    RESULT="fail"
  fi;
done;

echo $RESULT
