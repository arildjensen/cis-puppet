class cis::linuxcontrols::c0015 {
# CIS RHEL6 Control 1.6.1
# CIS RHEL6 Control 1.6.2
# CIS RHEL6 Control 1.6.3
# CIS RHEL6 Control 4.1.1
# CIS RHEL6 Control 4.1.2
# CIS RHEL6 Control 4.2.1
# CIS RHEL6 Control 4.2.2
# CIS RHEL6 Control 4.2.3
# CIS RHEL6 Control 4.2.4
# CIS RHEL6 Control 4.2.5
# CIS RHEL6 Control 4.2.6
# CIS RHEL6 Control 4.2.7
# CIS RHEL6 Control 4.2.8
  file {'/etc/sysctl.conf':
  	source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/sysctl.conf",
    user    => root,
    group   => root,
    mode    => 0640,
  	}
} 
