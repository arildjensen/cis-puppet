class cis::linuxcontrols::c0001 {
# CIS RHEL6 Control 1.1.17
  file {'/tmp':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '1777',
  }
}
