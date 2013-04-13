class cis::linuxcontrols::c0055 {
# CIS RHEL6 Control 6.1.1
  package {'cronie-anacron':
    ensure => installed,
  }
}
