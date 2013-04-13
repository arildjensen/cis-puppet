class cis::linuxcontrols::c0036 {
# CIS RHEL6 Control 3.5
  package {'dhcp':
    ensure => absent,
  }
}
