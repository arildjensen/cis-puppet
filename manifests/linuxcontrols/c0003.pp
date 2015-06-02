# Class cis::linuxcontrols::c0003
#
# Ensure cryptographic verification of software packages using gpgcheck is
# enabled and the YUM configuration file permissions are restrictive.
#
class cis::linuxcontrols::c0003 {
  case $::operatingsystem {
    'RedHat': {
      file {'/etc/yum.conf':
        source => 'puppet:///modules/cis/el6/etc/yum.conf',
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    'Amazon': {
      file {'/etc/yum.conf':
        source => "puppet:///modules/cis/awslinux/etc/${::operatingsystemrelease}-yum.conf",
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    default: { fail("ERROR: unsupported OS = $::operatingsystem") }
  }
}
