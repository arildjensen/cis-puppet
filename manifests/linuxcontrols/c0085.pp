class cis::linuxcontrols::c0085 {
# CIS RHEL6 9.2.1
  file {'/usr/local/sbin/f0004.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0004.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0004 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.1 (f0004)')
  }
}
