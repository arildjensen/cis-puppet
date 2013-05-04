# Class cis::linuxcontrols::c0091
#
# Ensure correct permissions on user home directories.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0091 {
  file {'/usr/local/sbin/f0009.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0009.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0009 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.7 (f0009)')
  }
}
