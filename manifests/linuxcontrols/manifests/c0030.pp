class cis::linuxcontrols::c0030 {
# CIS RHEL6 Control 2.1.15
  package {'daytime-stream':
    ensure => absent,
  }
}
