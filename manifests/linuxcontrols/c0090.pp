# Class cis::linuxcontrols:c0090
#
# Ensure root PATH integrity.
#

class cis::linuxcontrols::c0090 {
  case $::operatingsystem {
    'RedHat': {
      file {'/root/.bash_logout':
        source => 'puppet:///modules/cis/el6/root/bash_logout',
        owner  => root,
        group  => root,
        mode   => '0600',
      }
      file {'/root/.bash_profile':
        source => 'puppet:///modules/cis/el6/root/bash_profile',
        owner  => root,
        group  => root,
        mode   => '0600',
      }
      file {'/root/.bashrc':
        source => 'puppet:///modules/cis/el6/root/bashrc',
        owner  => root,
        group  => root,
        mode   => '0600',
      }
      file {'/root/.cshrc':
        source => 'puppet:///modules/cis/el6/root/cshrc',
        owner  => root,
        group  => root,
        mode   => '0600',
      }
      file {'/root/.tcshrc':
        source => 'puppet:///modules/cis/el6/root/tcshrc',
        owner  => root,
        group  => root,
        mode   => '0600',
      }
    }
    'Amazon': {
      if versioncmp($::facterversion, '1.7') > 0 {
        file { '/etc/facter/facts.d/cis-9.2.6.sh':
          ensure => 'file',
          owner  => 'root',
          group  => 'root',
          mode   => '0700',
          source => 'puppet:///modules/cis/awslinux/scripts/cis-9.2.6.sh',
        }

        if $::cis_9_2_6 == 'pass' {
          notify{ "CIS Benchmark 9.2.6 : ${::cis_9_2_6}":
            require  => File['/etc/facter/facts.d/cis-9.2.6.sh'],
            loglevel => info,
          }
        }
        else {
          notify{ "CIS Benchmark 9.2.6 : ${::cis_9_2_6}":
            require  => File['/etc/facter/facts.d/cis-9.2.6.sh'],
            loglevel => warning,
          }
        }
      }
      else {
        fail("Error: Can't check for CIS 9.2.6 in ${::fqdn}, facter must be upgraded (> 1.7)")
      }
    }
    default: {
      fail("Error: ${::operatingsystem} is not supported")
    }
  }
}
