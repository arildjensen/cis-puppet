# Class cis;:linuxcontrols::c0034
#
# Ensure X Windows is not present on the system.
#

class cis::linuxcontrols::c0034 {
  case $::operatingsystem {
    'RedHat', 'CentOS': {
      package {'xorg-x11-libs':
        ensure => absent,
      }
    }
    'Amazon': {
      package { 'xorg-x11-server-common':
        ensure => absent,
      }

      file { '/etc/inittab':
        source => 'puppet:///modules/cis/awslinux/etc/inittab',
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
