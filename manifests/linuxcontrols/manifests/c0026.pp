class cis::linuxcontrols::c0026 {
# CIS RHEL6 Control 2.1.11
  package {'xinetd':
  	ensure => absent
  	}
}
