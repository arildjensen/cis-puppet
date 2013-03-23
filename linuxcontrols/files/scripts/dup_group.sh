#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`awk -F: '{print $1}' /etc/group | sort -n | uniq -d | wc -l`

if [ $COMMAND = "0" ]; then 
  echo pass;
else 
  echo fail;
fi
