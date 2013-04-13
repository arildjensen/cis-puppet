#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '{if ($6=="") print $1}' /etc/passwd`

if [ x$COMMAND = x ]; then
  echo "pass";
else
  echo "fail";
fi

