#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '{print $6}' /etc/passwd`

RESULTS="pass"

for dir in $COMMAND; do
  if [ -e $dir/.netrc ]; then
    RESULTS="fail";
  fi;
done

echo $RESULTS
