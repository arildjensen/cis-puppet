class cis::linuxcontrols::c0033 {
# CIS RHEL6 Control 2.1.18
  package {'tcpmux-server':
  	ensure => absent
  	}
}
