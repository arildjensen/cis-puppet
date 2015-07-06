# Class cis::linuxcontrols:c0092
#
# Ensure no vulnerable dot-files exists.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0092 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0010.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0010.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0010 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.8 (f0010)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.8.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.8.sh',
        }

        if $::cis_9_2_8 == 'pass' {
          notify{ "CIS Benchmark 9.2.8 : ${::cis_9_2_8}":
            require  => File['/etc/facter/facts.d/cis-9.2.8.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.8 : ${::cis_9_2_8}":
            require  => File['/etc/facter/facts.d/cis-9.2.8.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.8 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
