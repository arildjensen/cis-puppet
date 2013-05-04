# Class cis::linuxcontrols:c0093
#
# Ensure no vulnerable .netrc files exist.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0093 {
  file {'/usr/local/sbin/f0011.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0011.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0011 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.9 (f0011)')
  }
}
