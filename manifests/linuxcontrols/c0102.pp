# Class cis::linuxcontrols::c0102
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.18 [RedHat]
#   - Ensure no duplicate group names are present.
#
# CIS 9.2.19 [Amazon Linux]
#   -  Check for Duplicate Group Names (Scored)

class cis::linuxcontrols::c0102 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0020.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0020.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0020 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.19 (f0020)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.19.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.19.sh',
        }

        $status = $::cis_9_2_19 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.19 : ${::cis_9_2_19}":
          require  => File['/etc/facter/facts.d/cis-9.2.19.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.19 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
