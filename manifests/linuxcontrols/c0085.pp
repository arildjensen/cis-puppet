# Class cis::linuxcontrols::c0085
#
# Ensure password fields are not empty.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0085 {
  case $::operatingsystem {
    'RedHat': {
      file { '/usr/local/sbin/f0004.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0004.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0004 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.1 (f0004)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.1.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.1.sh',
        }

        if $::cis_9_2_1 == 'pass' {
          notify{ "CIS Benchmark 9.2.1 : ${::cis_9_2_1}":
            require  => File['/etc/facter/facts.d/cis-9.2.1.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.1 : ${::cis_9_2_1}":
            require  => File['/etc/facter/facts.d/cis-9.2.1.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.1 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
