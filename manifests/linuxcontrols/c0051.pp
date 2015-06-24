# Class cis::linuxcontrols::c0052
#
# Configure auditd to keep all log entries.
#

class cis::linuxcontrols::c0051 {
case $::operatingsystem {
    'RedHat': {
      file {'/etc/audit/auditd.conf':
        source => 'puppet:///modules/cis/el6/etc/audit/auditd.conf',
        owner  => root,
        group  => root,
        mode   => '0640',
        notify => Service['auditd'],
      }
    }
    'Amazon': {
      file {'/etc/audit/auditd.conf':
        source => 'puppet:///modules/cis/awslinux/etc/audit/auditd.conf',
        owner  => root,
        group  => root,
        mode   => '0640',
        notify => Service['auditd'],
      }
    }
    default: { }
  }
}
