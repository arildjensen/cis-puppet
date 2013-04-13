class cis::linuxcontrols::c0070 {
# CIS RHEL6 Control 6.3.1
  file {'/etc/sysconfig/authconfig':
    source  => 'puppet:///modules/cis/linuxcontrols/el6/etc/sysconfig/authconfig',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
