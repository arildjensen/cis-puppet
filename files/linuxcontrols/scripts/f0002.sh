#!/bin/sh

# This script is used by the cis Puppet module.
# For the latest version see https://github.com/arildjensen/cis-puppet/

FILES=`df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nouser -ls`
OUTFILE=/var/log/control_f0002

if [ x$FILES == x ]; then 
  # List of unowned files is empty, so that's a pass.
  echo pass > $OUTFILE; 
else 
  # List of unowned files is NOT empty, that's a fail!
  echo fail > $OUTFILE; 
fi
chmod 0600 $OUTFILE
