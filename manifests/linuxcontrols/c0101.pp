class cis::linuxcontrols::c0101 {
# CIS RHEL6 9.2.18
  file {'/usr/local/sbin/f0019.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0019.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0019 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.18 (f0019)')
  }
}
