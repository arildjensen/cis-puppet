class cis::linuxcontrols::c0035 {
# CIS RHEL6 Control 3.3
  package {'avahi-daemon':
    ensure => absent,
  }
}
