class cis::linuxcontrols::c0053 {
# CIS RHEL6 Control 5.2.4
# CIS RHEL6 Control 5.2.5
# CIS RHEL6 Control 5.2.6
# CIS RHEL6 Control 5.2.7
# CIS RHEL6 Control 5.2.8
# CIS RHEL6 Control 5.2.9
# CIS RHEL6 Control 5.2.10
# CIS RHEL6 Control 5.2.11
# CIS RHEL6 Control 5.2.13
# CIS RHEL6 Control 5.2.14
# CIS RHEL6 Control 5.2.15
# CIS RHEL6 Control 5.2.16
# CIS RHEL6 Control 5.2.17
# CIS RHEL6 Control 5.2.18
  file {'/etc/audit/audit.rules':
    source => $hardwaremode ? {
      'x86_64'  => 'puppet:///modules/cis/linuxcontrols/el6/etc/audit/audit.rules.64',
      default   => 'puppet:///modules/cis/linuxcontrols/el6/etc/audit/audit.rules.32',
    },
    user    => root,
    group   => root,
    mode    => '0640',
    notify  => Service['auditd'],
    }
}
