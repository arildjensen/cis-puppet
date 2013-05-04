# Class cis::linuxcontrols::c0087
#
# Ensure no legacy "+" entries exist in the /etc/shadow file.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0087 {
  file {'/usr/local/sbin/f0006.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0006.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0006 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.3 (f0006)')
  }
}
