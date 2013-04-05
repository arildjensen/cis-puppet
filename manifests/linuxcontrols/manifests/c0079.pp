class cis::linuxcontrols::c0079 {
# CIS RHEL6 9.1.2
# CIS RHEL6 9.1.6
  file {'/etc/passwd':
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}
