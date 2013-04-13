class cis::linuxcontrols::c0023 {
# CIS RHEL6 Control 2.1.8
  package {'tftp-server':
    ensure => absent,
  }
}
