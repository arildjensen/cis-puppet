# Class cis::linuxcontrols::c0100
#
# Ensure no duplicate GIDs exist.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0100 {
  file {'/usr/local/sbin/f0018.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0018.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0018 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.16 (f0018)')
  }
}
