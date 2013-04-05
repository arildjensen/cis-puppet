class cis::linuxcontrols::c0080 {
# CIS RHEL6 9.1.3
# CIS RHEL6 9.1.7
  file {'/etc/shadow':
    owner   => root,
    group   => root,
    mode    => 0000,
  }
}
