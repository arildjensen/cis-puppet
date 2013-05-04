# Class cis::linuxcontrols:c0086
#
# Ensure no legacy "+" entries exist in the /etc/password file.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0086 {
  file {'/usr/local/sbin/f0005.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0005.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0005 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.2 (f0005)')
  }
}
