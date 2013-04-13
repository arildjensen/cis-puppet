class cis::linuxcontrols::c0093 {
# CIS RHEL6 9.2.9
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
