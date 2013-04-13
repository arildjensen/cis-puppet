class cis::linuxcontrols::c0073 {
# CIS RHEL6 Control 7.1.1
# CIS RHEL6 Control 7.1.2
# CIS RHEL6 Control 7.1.3
# CIS RHEL6 Control 9.2.17
  file {'/etc/login.defs':
    source  => 'puppet:///modules/cis/linuxcontrols/etc/login.defs',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
