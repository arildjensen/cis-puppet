# Class cis::linuxcontrols::c0007
#
# Ensure SELinux is enabled on boot and to enforce the default targeted
# policy.
#

class cis::linuxcontrols::c0007 {
  case $::operatingsystem {
    'RedHat': {
      file {'/etc/selinux/config':
        source => 'puppet:///modules/cis/el6/etc/selinux/config',
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    'Amazon': {
      package { [ 'libselinux', 'libselinux-utils', 'policycoreutils']:
        ensure => installed,
      }

      file {'/etc/selinux/config':
        source  => 'puppet:///modules/cis/awslinux/etc/selinux/config',
        owner   => root,
        group   => root,
        mode    => '0640',
        require => Package['libselinux'],
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
