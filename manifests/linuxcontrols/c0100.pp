# Class cis::linuxcontrols::c0100
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.16 [RedHat]
#   - Ensure no duplicate GIDs exist.
#
# CIS 9.2.16 [Amazon Linux]
#   - Check That Reserved UIDs Are Assigned to System Accounts (Scored)

class cis::linuxcontrols::c0100 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0018.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0018.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0018 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.16 (f0018)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.16.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.16.sh',
        }

        $status = $::cis_9_2_16 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.16 : ${::cis_9_2_16}":
          require  => File['/etc/facter/facts.d/cis-9.2.16.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.16 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
