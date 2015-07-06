# Class cis::linuxcontrols::c0098
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.14 [RedHat]
#   - Ensure user home ownership is correct.
#
# CIS 9.2.14 [Amazon Linux]
#   - Check for Duplicate UIDs (Scored)

class cis::linuxcontrols::c0098 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0016.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0016.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0016 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.14 (f0016)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.14.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.14.sh',
        }
        
        $status = $::cis_9_2_14 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.14 : ${::cis_9_2_14}":
          require  => File['/etc/facter/facts.d/cis-9.2.14.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.14 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
