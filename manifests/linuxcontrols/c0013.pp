# Class cis::linuxcontrols::c0013
#
# Enable authentication for single-user mode, disable interactive boot, and
# set the daemon umask to the more restrictive 027.
#

class cis::linuxcontrols::c0013 {
  case $::operatingsystem {
    'RedHat': {
      file {'/etc/sysconfig/init':
        source => 'puppet:///modules/cis/el6/etc/sysconfig/init',
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    'Amazon': {
      file {'/etc/sysconfig/init':
        source => 'puppet:///modules/cis/awslinux/etc/sysconfig/init',
        owner  => root,
        group  => root,
        mode   => '0644',
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
