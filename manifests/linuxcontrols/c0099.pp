# Class cis::linuxcontrols::c0099
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.15 [RedHat]
#   - Ensure no duplicate UIDs exist.
#
# CIS 9.2.15 [Amazon Linux]
#   - Check for Duplicate GIDs (Scored)

class cis::linuxcontrols::c0099 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0017.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0017.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0017 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.15 (f0017)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.15.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.15.sh',
        }

        $status = $::cis_9_2_15 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.15 : ${::cis_9_2_15}":
          require  => File['/etc/facter/facts.d/cis-9.2.15.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.15 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
