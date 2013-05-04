# Class cis::linuxcontrols:::c0089
#
# Ensure no UID 0 account exist other than root.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0089 {
  file {'/usr/local/sbin/f0008.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0008.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0008 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.5 (f0008)')
  }
}
