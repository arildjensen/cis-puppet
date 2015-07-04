# Class cis::linuxcontrols::c0087
#
# Ensure no legacy "+" entries exist in the /etc/shadow file.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0087 {
  case $::operatingsystem {
    'RedHat': {
      file { '/usr/local/sbin/f0006.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0006.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0006 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.3 (f0006)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.3.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.3.sh',
        }

        if $::cis_9_2_3 == 'pass' {
          notify{ "CIS Benchmark 9.2.3 : ${::cis_9_2_3}":
            require  => File['/etc/facter/facts.d/cis-9.2.3.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.3 : ${::cis_9_2_3}":
            require  => File['/etc/facter/facts.d/cis-9.2.3.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.3 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
