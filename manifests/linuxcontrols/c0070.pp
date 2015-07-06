# Class cis::linuxcontrols::c0070
#
# Set password hasing algorithm to use SHA-512
#

class cis::linuxcontrols::c0070 {
  case $::operatingsystem {
    'RedHat': {
      file { '/etc/sysconfig/authconfig':
        source => 'puppet:///modules/cis/el6/etc/sysconfig/authconfig',
        owner  => root,
        group  => root,
        mode   => '0644',
      }
    }
    'Amazon': {
      file { '/etc/sysconfig/authconfig':
        source => 'puppet:///modules/cis/awslinux/etc/sysconfig/authconfig',
        owner  => root,
        group  => root,
        mode   => '0644',
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
