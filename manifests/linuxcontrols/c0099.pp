# Class cis::linuxcontrols::c0099
#
# Ensure no duplicate UIDs exist.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0099 {
  file {'/usr/local/sbin/f0017.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0017.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0017 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.15 (f0017)')
  }
}
