class cis::linuxcontrols::c0021 {
# CIS RHEL6 Control 2.1.6
  package {'ypserv':
    ensure => absent,
  }
}
