# Class cis::linuxcontrols::c0094
#
# Ensure no .rhosts files exist.
#
# This is a reported, no enforced, control item.
#

class cis::linuxcontrols::c0094 {
  file {'/usr/local/sbin/f0012.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0012.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0012 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.10 (f0012)')
  }
}
