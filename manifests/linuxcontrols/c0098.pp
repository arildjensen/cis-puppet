# Class cis::linuxcontrols::c0098
#
# Ensure user home ownership is correct.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0098 {
  file {'/usr/local/sbin/f0016.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0016.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0016 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.14 (f0016)')
  }
}
