class cis::linuxcontrols::c0017 {
# CIS RHEL6 Control 2.1.2
  package {'telnet':
    ensure => absent,
  }
}
