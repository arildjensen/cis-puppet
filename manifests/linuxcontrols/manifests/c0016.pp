class cis::linuxcontrols::c0016 {
# CIS RHEL6 Control 2.1.1
  package {'telnet-server':
  	ensure => absent
  	}
}
