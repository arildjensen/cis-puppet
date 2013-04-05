class cis::linuxcontrols::c0082 {
# CIS RHEL6 9.1.5
# CIS RHEL6 9.1.9
  file {'/etc/group':
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}
