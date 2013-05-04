# Class cis::linuxcontrols::c0102
#
# Ensure no duplicate group names are present.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0102 {
  file {'/usr/local/sbin/f0020.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0020.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0020 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.19 (f0020)')
  }
}
