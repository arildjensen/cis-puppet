class cis::linuxcontrols::c0013 {
# CIS RHEL6 Control 1.5.4
# CIS RHEL6 Control 1.5.5
# CIS RHEL6 Control 3.1
  file {'/etc/sysconfig/init':
    source  => 'puppet:///modules/cis/linuxcontrols/el6/etc/sysconfig/init',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
