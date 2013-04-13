class cis::linuxcontrols::c0043 {
# CIS RHEL6 Control 5.1.2
  service {'rsyslog':
    enable => true,
  }
}
