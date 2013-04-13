class cis::linuxcontrols::c0091 {
# CIS RHEL6 9.2.7
  file {'/usr/local/sbin/f0009.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0009.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0009 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.7 (f0009)')
  }
}
