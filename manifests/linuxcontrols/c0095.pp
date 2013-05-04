# Class cis::linuxcontrols::c0095
#
# Ensures no .rhosts files are present.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0095 {
  file {'/usr/local/sbin/f0013.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0013.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0013 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.11 (f0013)')
  }
}
