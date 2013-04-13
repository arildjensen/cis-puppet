#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

COMMAND=`grep ^password /boot/grub/grub.conf 2>/dev/null`

if [ x$COMMAND = x ]; 
  then 
    echo fail; 
  else 
    echo pass;
fi
