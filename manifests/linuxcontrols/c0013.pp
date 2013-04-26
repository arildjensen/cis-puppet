# Class cis::linuxcontrols::c0013
#
# Enable authentication for single-user mode, disable interactive boot, and
# set the daemon umask to the more restrictive 027.
#

class cis::linuxcontrols::c0013 {
  file {'/etc/sysconfig/init':
    source  => 'puppet:///modules/cis/el6/etc/sysconfig/init',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
