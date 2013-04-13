class cis::linuxcontrols::c0102 {
# CIS RHEL6 9.2.19
  file {'/usr/local/sbin/f0020.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0020.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0020 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.19 (f0020)')
  }
}
