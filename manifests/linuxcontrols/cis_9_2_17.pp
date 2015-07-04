# Class cis::linuxcontrols::cis_9_2_17
#
# CIS 9.2.17 [Amazon Linux]
#   - Check for Duplicate User Names (Scored)

class cis::linuxcontrols::cis_9_2_17 {
  case $::operatingsystem {
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.17.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.17.sh',
        }

        $status = $::cis_9_2_17 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 9.2.17 : ${::cis_9_2_17}":
          require  => File['/etc/facter/facts.d/cis-9.2.17.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.17 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }

}
