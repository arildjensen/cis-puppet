class cis::linuxcontrols::c0048 {
  file {'/var/log/spooler':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}
