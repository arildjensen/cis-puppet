# Class cis::linuxcontrols::c0015
#
# Disable core dumps.
#

class cis::linuxcontrols::c0014 {
  file {'/etc/security/limits.conf':
    source => 'puppet:///modules/cis/el6/etc/security/limits.conf',
    owner  => root,
    group  => root,
    mode   => '0640',
  }

  case $::operatingsystem {
    'Amazon': {
      file { '/etc/sysctl.conf':
        source  => 'puppet:///modules/cis/awslinux/etc/sysctl.conf',
        owner   => root,
        group   => root,
        mode    => '0644',
      }
    }
    default: {}
  }
}
