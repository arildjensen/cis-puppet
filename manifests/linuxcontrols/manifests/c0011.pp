class cis::linuxcontrols::c0011 {
# CIS RHEL6 Control 1.5.1
  file {'/etc/grub.conf':
  	owner: root,
  	group: root,
  	mode:  0600
  	}
}
