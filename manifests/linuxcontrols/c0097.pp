# Class cis::linuxcontrols::c0097
#
# Ensure that defined home directories exist.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0097 {
  file {'/usr/local/sbin/f0015.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0015.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0015 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.13 (f0015)')
  }
}
