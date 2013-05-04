# Class cis::linuxcontrols::c0096
#
# Ensure users are assigned home directories.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0096 {
  file {'/usr/local/sbin/f0014.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0014.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0014 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.12 (f0014)')
  }
}
