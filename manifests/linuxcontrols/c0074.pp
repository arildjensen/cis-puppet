class cis::linuxcontrols::c0074 {
# CIS RHEL6 Control 7.2
  file {'/usr/local/sbin/f0001.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0001.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0001 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 7.2 (f0001)')
  }
}
