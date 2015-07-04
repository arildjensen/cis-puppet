# Class cis::linuxcontrols::c0094
#
# Ensure no .rhosts files exist.
#
# This is a reported, no enforced, control item.
#

class cis::linuxcontrols::c0094 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0012.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0012.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0012 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.10 (f0012)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.10.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.10.sh',
        }

        if $::cis_9_2_10 == 'pass' {
          notify{ "CIS Benchmark 9.2.10 : ${::cis_9_2_10}":
            require  => File['/etc/facter/facts.d/cis-9.2.10.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.10 : ${::cis_9_2_10}":
            require  => File['/etc/facter/facts.d/cis-9.2.10.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.10 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
