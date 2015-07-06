# Class cis::linuxcontrols:::c0089
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.5 [RedHat]
# CIS 9.2.5 [Amazon Linux]
#   - Ensure no UID 0 account exist other than root.

class cis::linuxcontrols::c0089 {
  case $::operatingsystem {
    'RedHat': {
      file { '/usr/local/sbin/f0008.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0008.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0008 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.5 (f0008)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.5.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.5.sh',
        }

        $status = $::cis_9_2_5 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.5 : ${::cis_9_2_5}":
          require  => File['/etc/facter/facts.d/cis-9.2.5.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.5 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
