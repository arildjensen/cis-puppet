class cis::linuxcontrols::c0018 {
# CIS RHEL6 Control 2.1.3
  package {'rsh-server':
  	ensure => absent
  	}
}
