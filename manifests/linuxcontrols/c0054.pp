# CIS RHEL6 Control 5.2.12 -- TODO Find a way to cron an update to
# audit.rules with suid/guid entries.
class cis::linuxcontrols::c0054 {
  case $::operatingsystem {
    'RedHat': {
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-5.2.12.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-5.2.12.sh',
        }

        $status = $::cis_5_2_12 ? {
          'pass'  => 'info',
          default => 'warning',
        }

        notify{ "CIS Benchmark 5.2.12 : ${::cis_5_2_12}":
          require  => File['/etc/facter/facts.d/cis-5.2.12.sh'],
          loglevel => $status,
        }
      }
      else {
        fail("Error: Can't check for CIS 5.2.12 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
