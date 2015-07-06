# Class cis::linuxcontrols::c0095
#
# CIS Benchmark 9.2.11
#
# Rationale:
# Groups defined in the /etc/passwd file but not in the /etc/group file pose a threat to
# system security since group permissions are not properly managed.

class cis::linuxcontrols::c0095 {
  case $::operatingsystem {
    'RedHat': {
      file {'/usr/local/sbin/f0013.sh':
        source => 'puppet:///modules/cis/linuxcontrols/scripts/f0013.sh',
        owner  => root,
        group  => root,
        mode   => '0700',
      }

      if $::f0013 == 'fail' {
        warning('Node $fqdn failed CIS RHEL6 Control 9.2.11 (f0013)')
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.11.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.11.sh',
        }

        if $::cis_9_2_11 == 'pass' {
          notify{ "CIS Benchmark 9.2.11 : ${::cis_9_2_11}":
            require  => File['/etc/facter/facts.d/cis-9.2.11.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.11 : ${::cis_9_2_11}":
            require  => File['/etc/facter/facts.d/cis-9.2.11.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.11 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
