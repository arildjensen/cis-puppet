class cis::linuxcontrols::c0003 {
# CIS RHEL6 Control 1.2.3
  file {'/etc/yum.conf':
    source  => 'puppet:///modules/cis/el6/etc/yum.conf',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
