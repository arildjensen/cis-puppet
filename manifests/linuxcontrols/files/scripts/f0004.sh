#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`cat /etc/shadow | awk -F: '($2=="") {print $1}'`

if [ x$FILES == x ]; then 
  echo pass;
else 
  echo fail;
fi
