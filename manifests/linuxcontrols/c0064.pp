class cis::linuxcontrols::c0064 {
# CIS RHEL6 Control 6.1.10
# CIS RHEL6 Control 6.1.11
  file {'/etc/at.deny':
    ensure  => absent,
  }
}
