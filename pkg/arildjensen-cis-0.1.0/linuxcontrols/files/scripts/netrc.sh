#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '($3>499 && $7!=/sbin/nologin) {print $6}' /etc/passwd`

RESULTS="pass"

for dir in $COMMAND; do
  if [ `find $dir -maxdepth 1 -type f -name ".netrc" -perm /g+rwx,o+rwx 2>/dev/null`x != x ]; then
    RESULTS="fail";
  fi;
done

echo $RESULTS
