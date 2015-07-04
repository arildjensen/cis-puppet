# Class cis::linuxcontrols::c0053
#
# Configure auditd to:
# - Record events that modify data and time information
# - Record events that modify user or group information
# - Record events that modify the system's network environment
# - Record events that modify the system's mandatory access controls
# - Collect login and logout events
# - Collect session initiation information
# - Collect discretionary access control permission modification events
# - Collect unsuccessful unauthorized access attempts to files
# - Collect successful file system mounts
# - Collect file deletion events by user
# - Collect changes to system administration scope
# - Collect system administrator actions (sudolog)
# - Collect kernel module loading and unloading
# - Make the audit configuration immutable
#

class cis::linuxcontrols::c0053 {
  case $::operatingsystem {
    'RedHat': {
      $file_source = $::hardwaremodel ? {
        'x86_64' => 'puppet:///modules/cis/el6/etc/audit/audit.rules.64',
        default  => 'puppet:///modules/cis/el6/etc/audit/audit.rules.32',
      }

      file {'/etc/audit/audit.rules':
        source => $file_source,
        owner  => root,
        group  => root,
        mode   => '0640',
        notify => Service['auditd'],
      }
    }
    'Amazon': {
      $file_source = $::hardwaremodel ? {
        'x86_64' => 'puppet:///modules/cis/awslinux/etc/audit/audit.rules.64',
        default  => 'puppet:///modules/cis/awslinux/etc/audit/audit.rules.32',
      }

      file {'/etc/audit/audit.rules':
        source => $file_source,
        owner  => root,
        group  => root,
        mode   => '0640',
        notify => Service['auditd'],
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
