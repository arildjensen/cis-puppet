# Class cis::linuxcontrols::c0091
#
# Ensure correct permissions on user home directories.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0091 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0009.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0009.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0009 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.7 (f0009)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.7.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.7.sh',
        }

        if $::cis_9_2_7 == 'pass' {
          notify{ "CIS Benchmark 9.2.7 : ${::cis_9_2_7}":
            require  => File['/etc/facter/facts.d/cis-9.2.7.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.7 : ${::cis_9_2_7}":
            require  => File['/etc/facter/facts.d/cis-9.2.7.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.7 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
