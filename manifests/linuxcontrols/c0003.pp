class cis::linuxcontrols::c0003 {
# CIS RHEL6 Control 1.2.3
  file {'/etc/yum.conf':
    source  => 'puppet:///modules/cis/linuxcontrols/el6/etc/yum.conf',
    user    => root,
    group   => root,
    mode    => '0640',
  }
}
