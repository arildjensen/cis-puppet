# Class cis::linuxcontrols::c0097
#
# Ensure that defined home directories exist.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0097 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0015.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0015.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0015 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.13 (f0015)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.13.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.13.sh',
        }

        if $::cis_9_2_13 == 'pass' {
          notify{ "CIS Benchmark 9.2.13 : ${::cis_9_2_13}":
            require  => File['/etc/facter/facts.d/cis-9.2.13.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.13 : ${::cis_9_2_13}":
            require  => File['/etc/facter/facts.d/cis-9.2.13.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.13 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
