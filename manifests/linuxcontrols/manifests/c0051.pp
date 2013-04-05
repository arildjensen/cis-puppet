class cis::linuxcontrols::c0051 {
# CIS RHEL6 Control 5.2.1.3
  file {'/etc/audit/auditd.conf':
  	source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/audit/auditd.conf",
    owner   => root,
    group   => root,
    mode    => 0640,
    notify  => Service['auditd'],
  	}
}
