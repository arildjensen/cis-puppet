class cis::linuxcontrols::c0092 {
# CIS RHEL6 9.2.8
  file {'/usr/local/sbin/f0010.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0010.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0010 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.8 (f0010)')
  }
}
