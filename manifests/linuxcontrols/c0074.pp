# Class cis::linuxcontrols::c0074
#
# This is a reported, not enforced, compliance item.
#
# CIS 7.2 [RedHat]
# CIS 7.2 [Amazon Linux]
#   - Disable System Accounts (Scored)
#   - Disable system accounts with non-interactive shells.
#

class cis::linuxcontrols::c0074 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0001.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0001.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }
      if $::f0001 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 7.2 (f0001)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-7.2.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-7.2.sh',
        }

        $status = $::cis_7_2 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 7.2 : ${::cis_7_2}":
          require  => File['/etc/facter/facts.d/cis-7.2.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 7.2 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
