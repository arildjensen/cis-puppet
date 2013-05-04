# Class cis::linuxcontrols::c0103
#
# Ensure no .netrc files are prensent.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0103 {
  file {'/usr/local/sbin/f0021.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0021.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0021 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.20 (f0021)')
  }
}
