#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`egrep -v \"^\+\" /etc/passwd | awk -F: '($1!=\"root\" && $1!=\"sync\" && $1!=\"shutdown\" && $1!=\"halt\" && $3<500 && $7!=\"/sbin/nologin\") {print $1}' 2>/dev/null`

if [ x$COMMAND = x ]; 
  then 
    echo pass; 
  else 
    echo fail;
fi
