class cis::linuxcontrols::c0104 {
# CIS RHEL6 9.2.21
  file {'/usr/local/sbin/f0022.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0022.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0022 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.21 (f0022)')
  }
}
