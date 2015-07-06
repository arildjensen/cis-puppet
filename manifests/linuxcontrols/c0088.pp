# Class cis::linuxcontrols:c0088
#
# Ensure no legacy "+" entries exist in the /etc/group file.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0088 {
  case $::operatingsystem {
    'RedHat': {
      file { '/usr/local/sbin/f0007.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0007.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0007 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.4 (f0007)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.4.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.4.sh',
        }

        if $::cis_9_2_4 == 'pass' {
          notify{ "CIS Benchmark 9.2.4 : ${::cis_9_2_4}":
            require  => File['/etc/facter/facts.d/cis-9.2.4.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.4 : ${::cis_9_2_4}":
            require  => File['/etc/facter/facts.d/cis-9.2.4.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.4 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
