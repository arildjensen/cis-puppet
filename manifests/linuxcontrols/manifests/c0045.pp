class cis::linuxcontrols::c0045 {
  file {'/var/log/secure':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}
