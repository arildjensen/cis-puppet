class cis::linuxcontrols::c0081 {
# CIS RHEL6 9.1.4
# CIS RHEL6 9.1.8
  file {'/etc/gshadow':
    owner   => root,
    group   => root,
    mode    => '0000',
  }
}
