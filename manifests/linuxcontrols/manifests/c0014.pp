class cis::linuxcontrols::c0014 {
# CIS RHEL6 Control 1.6.1
  file {'/etc/security/limits.conf':
  	source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/security/limits.conf",
    user    => root,
    group   => root,
    mode    => 0640,
  	}
}
