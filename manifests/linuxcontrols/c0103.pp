# Class cis::linuxcontrols::c0103
#
# This is a reported, not enforced, control item.
#
# CIS 9.2.20 [RedHat]
#   - Ensure no .netrc files are prensent.
#
# CIS 9.2.20 [Amazon Linux]
#   - Check for Presence of User .forward Files (Scored)

class cis::linuxcontrols::c0103 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0021.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0021.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0021 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.20 (f0021)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.20.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.20.sh',
        }

        $status = $::cis_9_2_20 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.20 : ${::cis_9_2_20}":
          require  => File['/etc/facter/facts.d/cis-9.2.20.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.20 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
