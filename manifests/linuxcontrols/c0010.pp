# Class cis::linuxcontrols::c0010
#
# Check for unconfined daemons. The custom fact 'f0000' will output pass or
# fail.
#

class cis::linuxcontrols::c0010 {
  file {'/usr/local/sbin/f0000.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0000.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0000 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 1.4.6 (f0000)')
  }
}
