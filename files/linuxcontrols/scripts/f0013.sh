#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '{print $4}' /etc/passwd`

RESULTS="pass"

for PGROUP in $COMMAND; do
  GGROUP=`awk -F: '{print $3}' /etc/group | egrep ^$PGROUP$`;
  if [ "$PGROUP" != "$GGROUP" ]; then
    RESULTS="fail";
  fi;
done

echo $RESULTS
