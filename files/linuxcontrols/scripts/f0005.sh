#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`grep '^+:' /etc/passwd`

if [ x$COMMAND == x ]; then 
  echo pass;
else 
  echo fail;
fi
