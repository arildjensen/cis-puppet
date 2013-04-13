class cis::linuxcontrols::c0010 {
# CIS RHEL6 Control 1.4.6
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
