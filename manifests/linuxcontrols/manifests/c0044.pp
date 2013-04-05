class cis::linuxcontrols::c0044 {
# CIS RHEL6 Control 5.1.4
  file {'/var/log/messages':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}
