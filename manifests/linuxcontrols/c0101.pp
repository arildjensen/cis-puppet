# Class cis::linuxcontrols::c0101
#
# This is a repoted, not enforced, control item.
#
# CIS 9.2.18 [RedHat]
#   - Ensure no duplicate user names are present.
#
# CIS 9.2.18 [Amazon Linux]
#   -  Check for Duplicate Group Names (Scored)

class cis::linuxcontrols::c0101 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0019.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0019.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0019 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.18 (f0019)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.18.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.18.sh',
        }

        $status = $::cis_9_2_18 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.18 : ${::cis_9_2_18}":
          require  => File['/etc/facter/facts.d/cis-9.2.18.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.18 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
